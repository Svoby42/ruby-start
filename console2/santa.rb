def wrap(&b)
  print "Santa says: "
  3.times(&b)
  print "\n"
end

def sum(a, b)
  return a + b
end

wrap { print sum(4,2) }

class Greeter

  attr_accessor :name
  attr_reader   :greeting
  attr_writer   :age

  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def name=(new_name)
    @name = new_name
  end
end

module StoreHelper
  def capitalize_words(string)
    string.split(' '.map {|word| word.capitalize}.join(' '))
  end
end

g = Greeter.new("bruh")
g.name = "Bruh"