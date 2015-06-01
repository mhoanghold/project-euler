def triangle?(number)
  Math.sqrt((8 * number) + 1).to_f % 1.0 == 0.0
end

def prime_in_range(range)
  set = []
  (range).each do |n|
    set << n if prime?(n)
  end
  set
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

set = prime_in_range(1..1_000_000)
def num_of_divisors?(number, set)
  if prime?(number)
    return 2
  end

  last_factor = 0
  temp = number
  factors = {}
  found = false
  n_index = 0
  while(!found)
    n = set[n_index]

    if prime?(temp)
      set << temp
      factors[temp] = 1
      last_factor = temp
      found = true
    end

    if (temp.to_f / n.to_f) % 1.0 == 0.0
      if n * last_factor == temp
        found = true
      end
      temp = temp / n
      if factors[n].nil?
        factors[n] = 1
      else
        factors[n] += 1
      end
      last_factor = n
      puts "LAST FACTOR #{last_factor}, TEMP #{temp}, FACTORS #{factors}"
      if temp == 1
        found = true
      end
    else
      n_index += 1
    end
    if found
      break
    end
  end

  product = 1
  factors.each do |n, exp|
    product *= (exp + 1)
  end
  product
end

found = false
n = 1
last_number = 1
while !found
  n += last_number + 1
  last_number += 1
  found = num_of_divisors?(n, set) > 500
end
