add = 2
sum = 1
found = false
n = 0
set = [1]

def sum_of(array)
  sum = 0
  array.each do |n|
    sum += n.to_i
  end
  sum
end
while !found
  if (set.length > 1 && (set.length - 1) % 4 == 0)
    add += 2
  end
  sum += add
  set << sum
  n += 1
  found = sum == 1002001
end

puts set.inspect
puts sum_of(set)


