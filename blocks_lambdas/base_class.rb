class FirstClass
  def hello
    puts "Hello World!"
  end
end

class SecondClass < FirstClass
  def hello
    puts "Another Hello World!"
    super
  end
end

SecondClass.new.hello