write = File.new("file.txt", "w")
write.puts("Random text").to_s

write.close

data = File.read("file.txt")

puts "Data: " + data