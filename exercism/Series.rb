class Series
  attr_accessor :nums

  def initialize(nums)
    @nums = nums
  end

  def slices(size)
    raise ArgumentError if size > nums.length
    nums.split(//).each_cons(size).map(&:join)
  end

end

value = '01234'
value = value.split(//) # ["0","1","2","3","4"]
value = value.each_cons(2).map(&:join)
p value

x = Series.new('01234')