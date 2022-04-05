def open_or_senior(data)
  arr = []
  data.each_index { |item| (data[item][0] >= 55 && data[item][1] > 7) ? arr << "Senior" : arr << "Open"  }
  arr
end

x = [[18, 20], [45, 2], [61, 12], [37, 6], [21, 21], [78, 9]]
p open_or_senior(x)