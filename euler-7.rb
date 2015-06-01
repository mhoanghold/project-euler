set = []
n = 1
found = false

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

while (!found)
  if prime?(n)
    set << n
  end
  n += 1

  found = set.length == 10001
end

puts set.last