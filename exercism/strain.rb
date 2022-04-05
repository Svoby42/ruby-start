module PhoneNumber
  extend self

  def clean(value)
    value = value.scan(/\d/).join
  end
end

p PhoneNumber.clean("(223) 456-7890")

x = [20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5]


p find_it(x)