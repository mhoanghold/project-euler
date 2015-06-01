require 'decimal'
Decimal.context.precision = 10000


set = {}
most_found = 0
(2..1000).each do |n|
  decimals = (Decimal(1)/Decimal(n)).to_s.split('.').last

  last_found = ''
  if decimals.length > 5
    start_index = 0
    repeating_set = decimals[start_index]
    found = false
    while (!found)
      found_count = decimals.scan(/(#{repeating_set})/)
      if found_count.length > 1
        last_found = repeating_set
        start_index += 1
        repeating_set += decimals[start_index]
        puts [n, start_index, decimals[start_index..(start_index + last_found.length - 1)], last_found].inspect
        if last_found.length > 1 && decimals[start_index..(start_index + last_found.length - 1)] == last_found
          found = true
        end
      else
        found = true
      end
    end
  end

  if last_found != ''
    set[n] = last_found
    if last_found.length > most_found
      most_found = last_found.length
    end
  end
end

set.each do |k, v|
  if v.length >= most_found
    puts k.inspect
    puts v.inspect
  end
end