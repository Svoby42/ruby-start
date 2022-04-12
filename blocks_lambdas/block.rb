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