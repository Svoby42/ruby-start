def validate_pin(pin)
  pin.match?(/\A(\d{4}|\d{6})\z/)
end

p validate_pin("1")
p validate_pin("1111")
p validate_pin("123456")
p validate_pin("1234567890")
p validate_pin("12")