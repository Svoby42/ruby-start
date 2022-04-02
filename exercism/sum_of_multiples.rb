class SumOfMultiples
  def initialize(*nums)
    @nums = nums.filter{ |m| m != 0 }
  end

  def to(final)
    result = []
    @nums.each do |num|
      i = 1
      while num*i < final
        result << num*i
        i += 1
      end
    end
    result.uniq.sum # 1) look bellow
  end
end

x = SumOfMultiples.new(3, 5)
p x.to_javalike(100)

# why unique? for example if we have numbers 3 and 5 and the final number is 100
# it means that at least one action will happen multiple times, 3 will get multiplied by 5
# and 5 will get multiplied by 3, in both cases it is 15 and we dont want that

# input: 3, 5, max_value: 10
# 3, 5, 6, 9
# for each x in input, multiply it by numbers from 1 to n
# so that x * n < max_value
# so if max value is 10, what will happen is this
# 3 * 1 + 3 * 2 + 3 * 3 = 3 + 6 + 9 = 18, 9 is the last multiple
# of 3 lesser than the max value, so we stop there
# and same goes for 5, 5 * 1 = 5, 5 * 2 is not less than max value
# so we stop there. The sum of 3s is 18, of 5s is 5, 18 + 5 = 23
