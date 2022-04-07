def find_multiples(integer, limit)
  arr = []
  (integer..limit).step(integer) do |index|
    arr << index
  end
  arr
end

# the most ranked solution on codewars
def find_multiples_better(integer, limit)
  (integer..limit).select{|i| i % integer == 0}
end

p find_multiples(5, 25)