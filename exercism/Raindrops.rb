module Raindrops
  extend self

  def convert(x)
    result = ""
    if x % 3 == 0
      result += "Pling"
    end
    if x % 5 == 0
      result += "Plang"
    end
    if x % 7 == 0
      result += "Plong"
    end
    result.empty? ? x.to_s : result
  end
end

p Raindrops.convert(10)
p Raindrops.convert(14)
p Raindrops.convert(15)
p Raindrops.convert(35)
p Raindrops.convert(52)