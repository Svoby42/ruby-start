x = 1

loop do
  x += 1

  next unless (x % 2) == 0
  puts x

  break if x >= 10
end


y = 1

while y <= 10
  y += 1
  next unless (y % 2) == 0
  puts y
end

puts "haha" unless (y = 1)

z = 1

until z >= 10
  z += 1
  next unless (z % 2) == 0
  puts z
end

numbers = [1,2,3,4,5]
for number in numbers
  puts "#{number}, "
end

groceries = ["bananas", "potatoes", "daniela"]

groceries.each do |food|
  puts "Get #{food}"
end

(0..5).each do |i|
  puts "#{i}"
end