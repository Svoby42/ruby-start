def sum_dig_pow(a, b)
  arr = []
  (a..b).each do |num|
    sum = 0
    num = num.to_s.chars.map(&:to_i)
    num.each_with_index do |x, index|
      sum += x ** (index + 1)
    end
    num = num.join.to_i
    sum == num ? arr << num : nil
  end
  arr
end

# most ranked solution on codewars
def sum_dig_pow_better(a, b)
  (a..b).select { |n| n == n.to_s.chars.map.with_index(1) { |e, i| e.to_i ** i }.reduce(:+) }
end

p sum_dig_pow(50, 150)
p sum_dig_pow(683, 2027)

puts 683.digits.join