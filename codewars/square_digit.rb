def square_digits(num)
  num = num.to_s.chars.map(&:to_i)
  num.map { |num| num ** 2 }.join.to_i
end

p square_digits(3212)