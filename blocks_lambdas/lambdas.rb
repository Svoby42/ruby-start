x = -> {puts "Hello"}
x.call


x = lambda { |input| p input }

x.call([1,2,3,4,5])

define_method :square, square = lambda { |x| x * x }

puts