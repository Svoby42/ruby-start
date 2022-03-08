
array_1 = Array.new
array_2 = Array.new(5, ".")
array_3 = Array.new(5, "empty")
array_4 = [1, "two", 3, 5.5]

puts array_1
puts array_2
puts array_3
puts array_4

array_4.unshift(0)
puts array_4.join(", ")
array_4.push(100, 200)
puts array_4.join(", ")
array_4.concat([10, 20, 30])
puts array_4.join(", ")

puts array_4.include?(100)
puts array_4.count(100)

p array_4

array_4.each { |value| puts "#{value} --"}
