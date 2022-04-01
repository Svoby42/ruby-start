module Hamming
  extend self
  def compute(original, new)
    if original.length != new.length
      raise ArgumentError
    else
      changed = 0
      count = 0
      original.length.times do
        unless original[count] == new[count]
          changed += 1
        end
        count += 1
      end
      changed
    end
  end
end

p Hamming.compute('GGACGGATTCTG', 'AGGACGGATTCT')
