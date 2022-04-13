def print_something(&my_block)
  my_block.call("Nazdar")
end

print_something do |content|
  puts content
end

def do_something
  yield
end

do_something{ puts "Zdar" }

def test
  yield 5
  puts "You are in the method test"
  yield 100
end

test { |i| puts "Block #{i}" }

module Greeting
  def hello
    puts "Hello from module"
  end
end

class MyClass
  prepend Greeting
  def hello
    puts "Hello from class"
  end
end

MyClass.new.hello #=> Hello from module
puts "#####"

class AnotherClass
  include Greeting
  def hello
    puts "Hello from class"
  end
end

AnotherClass.new.hello #=> Hello from class