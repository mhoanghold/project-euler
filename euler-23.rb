def factors(number)
  set = []
  n = 0
  while (n != number)
    if (number.to_f / n.to_f) % 1 == 0
      set << n
    end
    n += 1
  end
  set
end

def sum_of(array)
  sum = 0
  array.each do |n|
    sum += n
  end
  sum
end

def abundant?(n)
  (sum_of(factors(n))) > n
end

def sum_of_abundant?(n, set)
  if n < 24 || n == 29123
    return false
  end

  found = false
  temp_n = n
  if temp_n % 2 == 0
    temp_n -= 2
  else
    temp_n -= 1
  end

  while (!found && temp_n >= 12)
    if !set[temp_n].nil?
      other_n = n - temp_n
      if !set[other_n].nil?
        found = true
        break
      end
    end
    temp_n -= 2
  end
  found
end

set = {}
(1..28123).each do |n|
  if abundant?(n)
    set[n] = 1
  end
end

puts set.keys.inspect

answer = 0
(1..28123).each do |n|
  if !sum_of_abundant?(n, set)
    answer += n
    puts n.inspect
  end
end
puts answer.inspect
#
# (1..28123).each do |n|
#
# end

# puts (set - (1..28123).to_a).inspect