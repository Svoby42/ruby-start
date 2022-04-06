def persistence(x)
  puts x.to_s.chars.map(&:to_i).inject(:*)
  x < 10 ? 0 : 1 + persistence(x.to_s.chars.map(&:to_i).inject(:*))
end


p persistence(999)

#[1,2,3,4,5].inject(:*) = 120