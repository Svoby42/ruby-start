def dig_pow(n, p)
  sum = 0
  n.to_s.chars.map(&:to_i).each_with_index { |d, i| sum += d ** (p + i) }
  puts sum
  k = sum / n
  k % 1 == 0 ? k : -1
end

p dig_pow(46288, 3) # sum is 2 360 688
p dig_pow(92, 1) # sum is 13, lesser than n, -1 is returned