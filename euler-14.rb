def collatz_seq(number)
  result = number
  set = [number]

  while result != 1
    if set[-1] % 2 == 0
      set << set[-1] / 2
    else
      set << set[-1] * 3 + 1
    end
    result = set[-1]
  end

  set
end

n = 999999
largest_set = 0
largest_number = 0
while (n != 0)
  set = collatz_seq(n)
  if set.length > largest_set
    largest_set = set.length
    largest_number = n
  end
  n -= 1
end

puts largest_number