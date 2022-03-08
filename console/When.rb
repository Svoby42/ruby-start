
age = 12

print "Pozdrav "

greeting = gets.chomp

case greeting
when "French", "french"
  puts "Bonjour"
  exit
when "Spanish", "spanish"
  puts "hola"
  exit
else
  "English"
  puts "hello"
end