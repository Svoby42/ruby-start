class RomanNumerals
  def self.from_roman(roman)
    mapping = {
      "M"=>1000,
      "D"=>500,
      "C"=>100,
      "L"=>50,
      "X"=>10,
      "V"=>5,
      "I"=>1
    }
    roman.chars.map do |l|
      mapping[l]
    end.compact.chunk_while do |i,j|
      i <= j
    end.map do |chunk|
      if chunk.first < chunk.last
        chunk.reverse.inject(:-)
      else
        chunk.sum
      end
    end.sum
  end
  def self.to_roman(integer)

  end
end

puts RomanNumerals.from_roman('MMVIII')