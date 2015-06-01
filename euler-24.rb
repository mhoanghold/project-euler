digits = (0..9).to_a.join
set = []
found = {}

while (set.length != 3628800)
  new_num = digits.split("").shuffle.join

  if found[new_num].nil?
    found[new_num] = 1
    set << new_num.to_i
    puts set.length.inspect
  end
end

sorted = found.keys.sort
puts sorted[999_999].inspect