module Complement
  extend self

  VALUES = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
  }

  def of_dna(value)
    result = []
    value = value.split('')
    value.each do |letter|
      result << VALUES.fetch(letter)
    end
    result.join('')
  end

end

p Complement.of_dna('ACGTGGTCTTAA')
p Complement.of_dna('A')