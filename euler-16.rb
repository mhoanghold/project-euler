sum = 0
(2 ** 1000).to_s.split('').each do |n|
  sum += n.to_i
end
puts sum