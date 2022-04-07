require 'ipaddr'
def ipsBetween(start, ending)
  IPAddr.new(ending).to_i - IPAddr.new(start).to_i
end

puts ipsBetween("10.0.0.0", "191.0.0.255")