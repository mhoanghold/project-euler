less_than_20 = ['', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
tens = ['twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
hundred = 'hundred'
and_word = 'and'


all_words = []
(1..999).each do |n|
  remainder = n % 100
  parts = n.to_s.split('')
  additions = []
  if parts.length == 3
    additions << less_than_20[parts.first.to_i]
    additions << hundred
    if parts[1] == '0' && parts.last == '0'
    elsif remainder < 20
      additions << and_word
      additions << less_than_20[remainder]
    else
      additions << and_word
      second_digit = parts[1].to_i - 2
      additions << tens[second_digit]
      additions << less_than_20[parts.last.to_i]
    end
  elsif parts.length == 2
    if remainder < 20
      additions << less_than_20[remainder]
    else
      second_digit = parts.first.to_i - 2
      additions << tens[second_digit]
      additions << less_than_20[parts.last.to_i]
    end
  elsif parts.length == 1
    additions << less_than_20[parts.last.to_i]
  end
  puts "#{n} - #{additions}"
  all_words += additions
end

sum = 0
all_words.each do |word|
  sum += word.length
end

puts sum
