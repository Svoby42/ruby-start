module Geek
  def geeks
    puts "GeeksforHeeks!"
  end
end

class Person
  include Geek
end

class Star
  extend Geek
end

class Both
  include Geek
  extend Geek
end

Both.geeks
Both.new.geeks

#Person.new.geeks # works
#Person.geeks     # undefined method
#Star.new.geeks   # undefined method
#Star.geeks       # works
#