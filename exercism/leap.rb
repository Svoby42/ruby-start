module Year
  extend self

  def leap?(year)
    if year % 4 == 0
      if year % 100 == 0 && year % 400 == 0
        true
      else
        if year % 100 != 0
          true
        else
          false
        end
      end
    else
      false
    end
  end

  def leap_better?(year)
    year % 4 == 0 and year % 100 != 0 or year % 400 == 0
  end

end

p Year.leap?(2100)
p Year.leap?(2000)
p Year.leap?(1996)