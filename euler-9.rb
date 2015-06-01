numbers = (1..999).to_a
sums_of_100 = []

def triplet?(a, b,c)
  a * a + b * b == c * c
end

numbers.each_with_index do |n|
  numbers.each_with_index do |i|
    numbers.each_with_index do |j|
      if n + i + j == 1000
        sums_of_100 << [n, i, j]
        if triplet?(n, i, j)
          puts [n, i, j]
        end
      end
    end
  end
end