def comp(array1, array2)
  unless array1.nil? || array2.nil?
    array1 = array1.sort.map{|x| x**2}
    array2 = array2.sort
  end
  array1 == array2
end

p comp([121, 144, 19, 161, 19, 144, 19, 11], [121, 14641, 20736, 361, 25921, 361, 20736, 361])