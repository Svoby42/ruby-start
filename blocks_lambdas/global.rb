
$global = 10

class Class1
  def print_global
    puts "Global variable is #{$global}"
  end
end

class Class2
  def print_global
    puts "Global variable is #{$global}"
  end
end

Class1.new.print_global
Class2.new.print_global