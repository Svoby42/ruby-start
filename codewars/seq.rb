def find_it(seq)
  seq.each do |num|
    if seq.count(num) % 2 != 0
      return num
    end
  end
end