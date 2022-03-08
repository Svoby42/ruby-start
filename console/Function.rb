def add_nums(num_1, num_2)
  return num_1.to_i + num_2.to_i
end

puts add_nums(3, 4)

def check_age(age)
  raise ArgumentError, "Enter Positive Number" unless age > 0
end

begin
  check_age(-1)
end


print "Zadej cislo: "
cislo = gets.to_i
print "Zadej druhe cislo: "
cislo_2 = gets.to_i

begin
  answer = cislo / cislo_2
rescue
  puts "You can't divide by zero"
end

puts "#{cislo} / #{cislo_2} = #{answer}"