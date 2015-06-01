sum = 0
(1..100).each do |n|
  sum += n
end
square_sum = 0
(1..100).each do |n|
  square_sum += n * n
end

puts (sum * sum) - square_sum