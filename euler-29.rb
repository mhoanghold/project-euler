set = []
(2..100).each do |n|
  (2..100).each do |i|
    set << n ** i
  end
end

puts set.uniq.length