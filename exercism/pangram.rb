module Pangram
  extend self

  ALPHABET = ('a'..'z').to_a

  def pangram?(string)
    string = string.gsub(/[^a-z]/i, "")
    string = string.downcase.split("").sort.uniq
    string == ALPHABET
  end

end

puts Pangram.pangram?("the_quick_brown_fox_jumps_over_the_lazy_dog")