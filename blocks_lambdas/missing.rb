class Animal
  def walk
    puts "I am walking"
  end

  private def method_missing(method_name, *args)
    message = "You called method #{method_name} with #{args}. This method doesn't exist."
    raise NoMethodError, message
  end

end

cow = Animal.new

cow.fly # NoMethodError
cow.sing