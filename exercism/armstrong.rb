class ArmstrongNumbers
  def self.include?(number)
    number = number.to_s.chars.map(&:to_i)
    sum = 0
    number.each do |num|
      sum += num**number.length
    end
    number = number.join.to_i
    number == sum
  end
end

p ArmstrongNumbers.include?(153)
p ArmstrongNumbers.include?(10)
p ArmstrongNumbers.include?(9475)