require 'csv'
alphabet = ('a'..'z').to_a
names = CSV.read('p022_names.txt').first.sort
sum = 0
names.each_with_index do |name, index|
    multiplier = index + 1
    name_value = 0
    name.split('').each do |char|
      char = char.downcase
      name_value += alphabet.index(char) + 1
    end

    sum += (multiplier * name_value)
end
puts sum.inspect

