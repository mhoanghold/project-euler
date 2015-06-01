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

set1 = {}
(1..10000).each do |n|
  sum = sum_of(factors(n))
  set1[n] = sum if sum != 1
end

set2 = []
set1.each do |key, number|
  if set1[number] == key && number != key
    set2 << number
    set2 << key
  end
end

puts sum_of(set2.uniq).inspect