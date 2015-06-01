set = '75
95 64
17 47 82
18 35 87 10
20 04 82 47 65
19 01 23 75 03 34
88 02 77 73 07 63 67
99 65 04 28 06 16 70 92
41 41 26 56 83 40 80 70 33
41 48 72 33 47 32 37 16 94 29
53 71 44 65 25 43 91 52 97 51 14
70 11 33 28 77 73 17 78 39 68 17 57
91 71 52 38 17 14 91 43 58 50 27 29 48
63 66 04 68 89 53 67 30 73 16 69 87 40 31
04 62 98 27 23 09 70 98 73 93 38 53 60 04 23'

def sum_of(array)
  sum = 0
  array.each do |n|
    sum += n.to_i
  end
  sum
end

numbers = []
set.split("\n").each do |row|
  row_set = []
  row.split(' ').each do |n|
    row_set << n.to_i
  end
  numbers << row_set
end


high = numbers.length - 1
x = 0
y = 0
found = false
paths = []
path = []
found_hashes = {}
path_hashes = {}
while !found
  if path_hashes[[x,y].hash.to_s].nil?
    path << [x, y]
    path_hashes[[x,y].hash.to_s] = 1
  end

  y += 1
  row = numbers[y]
  x_add = [0,1].sample

  if x + x_add >= row.length
    x = row.length - 1
  else
    x += x_add
  end

  if y == high
    path << [x,y]
    if found_hashes[path.hash.to_s].nil?
      paths << path
      found_hashes[path.hash.to_s] = 1
    end
    found = paths.length == (8192*2)
    path = []
    path_hashes = {}
    x = 0
    y = 0
  end
end

sums = []
paths.each do |path|
  quick_sum = []
  path.each do |p|
    quick_sum << numbers[p.last][p.first]
  end
  sums << sum_of(quick_sum)
end

puts sums.sort.last.inspect