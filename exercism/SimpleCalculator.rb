class SimpleCalculator
  class UnsupportedOperation < StandardError
  end

  ALLOWED_OPERATIONS = %w[+ / *].freeze

  def self.calculate(first_operand, second_operand, operation)
    raise ArgumentError if first_operand.class == String || second_operand.class == String
    raise UnsupportedOperation unless ALLOWED_OPERATIONS.include? operation

    begin
      "#{first_operand} #{operation} #{second_operand} = #{first_operand.send(operation, second_operand)}"
    rescue ZeroDivisionError => e
      "Division by zero is not allowed."
    end

  end
end

p SimpleCalculator.calculate(16, 51, "+")
p SimpleCalculator.calculate(32, 6, "*")
p SimpleCalculator.calculate(512, 4, "/")

p SimpleCalculator.calculate(512, 4, "-")