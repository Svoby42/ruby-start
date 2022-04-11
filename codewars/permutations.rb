
def permutations(string)
  array = string.chars
  arr = []
  array.permutation(array.size).each do |item|
    arr << item.join
  end
  arr.uniq
end

def call_proc
  puts "Before proc"
  my_proc = Proc.new { return 2 }
  my_proc.call
  puts "After proc"
end

#p call_proc


def call_proc2(my_proc)
  count = 500
  my_proc.call
end

count = 1
my_proc = Proc.new { puts count }
p call_proc2(my_proc)

def return_binding
  foo = 100
  binding
end

puts return_binding.eval('foo')

def run_proc_with_random_number(&proc)
  proc.call(rand(1...10))
end

x = -> { puts "nazdar" }

run_proc_with_random_number{ |n| puts "#{n}!" }

x.call