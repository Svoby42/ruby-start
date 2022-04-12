
p 1 == 1.0                # true
p 1.eql? 1.0      # false

a = "xyz"
b = "xyz"
p a.equal? b # false, in Ruby everything is an object, every object is unique, no matter its value
p a.eql? b    # true
p a == b      # true