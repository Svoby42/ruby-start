class Greeting
  def self.hello
    'Hello World!'
  end

  def self.eigenclass
    class << self
      self
    end
  end
end

p Greeting.eigenclass
p Greeting.eigenclass.name

p Greeting.singleton_methods
p Greeting.eigenclass.instance_methods