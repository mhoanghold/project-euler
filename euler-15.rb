low = 0
high = 20
set = []
(low..high).each do |num_elements|
  set << (0..20).to_a
end

def exist?(path, paths)
  found = false
  paths.each do |p|
    if p == path
      found = true
      break
    end
  end
  found
end

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

  x_add = [0,1].sample
  x += x_add
  y += x_add == 0 ? 1 : 0

  x = [x,high].min
  y = [y,high].min

  if x == high && y == high
    path << [20, 20]
    if found_hashes[path.hash.to_s].nil?
      paths << path
      found_hashes[path.hash.to_s] = 1
      puts paths.length
    end
    found = paths.length == 10_000_000
    path = []
    path_hashes = {}
    x = 0
    y = 0
  end
end

paths.each do |path|
  puts path.inspect
end