
class User
  attr_accessor :name, :email

  def initialize (attributes = {})
    @name = attributes[:name]
    @email = attributes[:email]
  end

  def formatted_email
    "#{@name} < #{@email}"
  end

end

user = User.new(name: "Martin Stepan", email: "martin.stepan@seznam.cz")
puts user.formatted_email