
number_hash = {"PI" => 3.14,
               "Golden" => 1.618,
               "e" => 2.718 }

string_hash = {"Ondrej Svoboda" => "Lumír Práskal", "Daniela Votrubcova" => "Devil", "Veronika Libanska" => "Angel"}

samp_hash = Hash.new

puts number_hash["PI"]
puts string_hash["Ondrej Svoboda"]

string_hash.each { |key, value| puts key.to_s + " : " + value.to_s }

puts string_hash.has_key?("Ondrej Svoboda").to_s

class Menu
  include Enumerable

  def each
    yield "pizza"
    yield "spaghetti"
    yield "salad"
    yield "water"
    yield "bread"
  end
end

menu_options = Menu.new
menu_options.each do |item|
  puts "would you like: #{item}"
end

p menu_options.sort

p menu_options.find{|item| item = "pizza"}
p menu_options.select{|item| item.size <= 5}
p menu_options.reject{|item| item.size <= 5}

p menu_options.first
p menu_options.take(2)
p menu_options.drop(2)
p menu_options.max
p menu_options.min