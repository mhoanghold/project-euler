def num_of_quadratic_prime?(a, b)
  found = false
  n = 0
  count = 0
  while !found
    if prime?(quadratic_prime(n, a, b))
      count += 1
      n += 1
    else
      found = true
    end
  end
  count
end

def quadratic_prime(n, a, b)
  (n ** 2) + (a * n) + b
end

def prime?(number)
  if number <= 1
    return false
  elsif number <= 3
    return true
  elsif number % 2 == 0 || number % 3 == 0
    return false
  end

  primality = true
  i = 5
  while (i * i) <= number
    if number % i == 0 || number % (i + 2) == 0
      primality = false
      break
    end
    i = i + 6
  end
  return primality
end

set = []
largest_count = 0
(-999..999).each do |n|
  (-999..999).each do |i|
    count = num_of_quadratic_prime?(n, i)
    if count > largest_count
      set = [n, i]
      puts [set.inspect, count].inspect
      largest_count = count
    end
  end
end