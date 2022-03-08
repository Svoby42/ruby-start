require './german_shepard'
require './dog'

class Animal
  def initialize
    puts "Nove zvire"
  end

  def set_name(new_name)
    @name = new_name
  end

  def get_name
    @name
  end

  def name
    @name
  end

  def name=(new_name)
    if new_name.is_a?(Numeric)
      puts "Jméno nesmí být číslo"
    else
      @name = new_name
    end
  end
end

cat = Animal.new
cat.set_name("Catoo")
puts cat.get_name
puts cat.name
cat.name = "Kitoo"
puts cat.name

dog = Dog.new
dog.name = "Dog"
dog.weight = 100
puts dog.name

max = GermanShepard.new
max.name = "Max"
puts max.bark