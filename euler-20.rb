def factorial(n)
  product = 1
  (1..n).to_a.reverse.each do |number|
    n *= number
  end
  n
end

def sum_of_digits(n)
  sum = 0
  n.to_s.split('').each do |number|
    sum += number.to_i
  end
  sum
end

puts factorial(10)
puts sum_of_digits(factorial(100))