module One
  def another
    puts "From One Module"
  end
end

module Two
  def another
    puts "From Two Module"
  end
end

module Three
  def another
    puts "From Three Module"
  end
end

class Creature
  def another
    puts "From Creature class"
  end
end

class Human < Creature
  prepend Three
  extend Two
  include One

  def another
    puts "Instance Method"
  end

  def self.another
    puts "From Human Class Singleton"
  end
end

pepa = Human.new

def pepa.another
  puts "From pepa object"
end

pepa.another