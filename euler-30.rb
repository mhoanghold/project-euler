power = 5
set = []

def sum_of_power(n, power)
  sum = 0
  n.to_s.split('').each do |i|
    sum += i.to_i ** power.to_i
  end
  sum
end

(2..1_000_000).each do |n|
  if n == sum_of_power(n, power)
    puts n.inspect
    set << n
  end
end


def sum_of(array)
  sum = 0
  array.each do |n|
    sum += n.to_i
  end
  sum
end

puts sum_of(set)