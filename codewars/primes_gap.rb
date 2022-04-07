require 'prime'

# original solution, works, but too slow
def gap(g, m, n)
  arr = []
  for i in (m..n) do
    for j in (2..i) do
      break if i % j == 0
    end
    arr << i if i==j
  end
  arr.each_cons(2) do |first, second|
    if second - first == g
      return [first, second]
    end
  end
end

def gap2(g, l, h)
  (l..h).each do |n|
    next unless n.prime?
    return [n, n + g] if (n + g).prime? && (n+1...n+g).none?(&:prime?)
  end
  nil
end

p gap(2, 3, 50)
p gap(2, 100, 110)
p gap(4, 100, 110)
p gap(6, 100, 110)
p gap(8, 300, 400)