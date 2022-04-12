class Foo
  def baz
    puts "instance method"
  end
end

Foo.new.baz


class Foo
  attr_accessor :baz
end

foo = Foo.new
foo.baz = "instance method"
puts foo.baz


class Foo; end

foo = Foo.new
def foo.bar
  puts "instance method"
end
foo.bar