result = %w[/ * - ** +].map do |method|
  4.send(method, 2)
end

p 2.send :+, 3

p result

class Text
  def text(*args)
    args.join(' ')
  end
end

k = Text.new
p k.send :text, "skakal", "pes", "pres", "oves"


values = {
  1=>"I",
  4=>"IV",
  5=>"V",
  9=>"IX",
  10=>"X",
  40=>"XL",
  50=>"L",
  90=>"XC",
  100=>"C",
  400=>"CD",
  500=>"D",
  900=>"CM",
  1000=>"M"
}

def solutions(s)
  map = {
    'I' => 1,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1000
  }

  sum = map[s[0]]
  s.chars.each_cons(2) do |c1, c2|
    sum += map[c2]
    puts sum1: sum
    sum -= map[c1] * 2 if map[c1] < map[c2]
    puts sum2: sum
  end
  sum
end

p solutions("MMXXII")