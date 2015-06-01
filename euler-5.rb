start = Time.now.to_i
number = 12252240
found = false
while (!found)
  divisible_by_all = true
  (11..20).each do |n|
    if (number.to_f / n.to_f) % 1 != 0
      puts [number, n].inspect
      divisible_by_all = false
      break
    end
  end

  if divisible_by_all
    puts 'CORRECT'
    puts number
    puts (Time.now.to_i - start)
  end

  number += 20
  found = divisible_by_all
end