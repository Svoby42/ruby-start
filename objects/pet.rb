require_relative 'human'
require_relative 'smart'

module Pet
  def make_sound
    puts "Meow"
  end
end

class DogPet
  include Pet
end

rover = DogPet.new
rover.make_sound

class Scientist
  include Human
  prepend Smart

  def act_smart
    return "E = ruby"
  end
end

einstein = Scientist.new
einstein.name = "Albert"

puts einstein.name
einstein.run

puts einstein.name + " says " + einstein.act_smart