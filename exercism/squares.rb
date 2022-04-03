class Squares

  def initialize(num)
    @num = num
  end

  def square_of_sum
    (1..@num).to_a.sum ** 2
  end

  def sum_of_squares
    (1..@num).to_a.map{ |num| num**2 }.sum
  end

  def difference
    square_of_sum - sum_of_squares
  end

end

x = Squares.new(10)
p x.square_of_sum
p x.sum_of_squares