def divisors(n)
  arr = []
  (2...n).each do |num|
    if n % num == 0
      arr << num
    end
  end
  if arr.empty?
    "#{n} is prime"
  else
    arr
  end
end

def divisors_better(n)
  vals = (2..n/2).select{|x| n % x == 0}
  vals.empty? ? "#{n} is prime" : vals
end

p divisors(12)
p divisors(25)
p divisors(13)

p divisors_better(13)