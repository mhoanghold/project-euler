def palindrome?(number)
  number.to_s == number.to_s.reverse
end

set = []
(100..999).each do |n|
  (100..999).each do |i|
    if palindrome?(n * i)
      set << (n * i)
    end
  end
end

puts set.sort.last

