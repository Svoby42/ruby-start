module Isogram
  extend self

  def isogram?(value)
    result = true
    unless value == ""
      value = value.downcase.scan(/\b[\w']+\b/).join.split("")
      value.each do |char|
        if value.count(char) > 1
          result = false
          break
        else
          result = true
        end
      end
    end
    result
  end

  def isogram_simpler?(value)
    result = value.downcase.scan(/\w/)
    result == result.uniq
  end

end

p Isogram.isogram_simpler?("lumberjack")
x = "lumberjack"
x = x.downcase.scan(/\w/)
p x == x.uniq