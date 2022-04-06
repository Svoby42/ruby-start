# https://github.com/malachispencer/codewars/blob/master/ruby/6kyu/find-the-unique-number.rb
# copied from the link above, couldn't figure this one out, but now when I see it I think it's simple
# iterating through the array and doing .count or .select or .detect on each element takes time
# hashes take only unique values, so we create a hash and add those values into the hash, if
# the value repeats its hash value gets incremented, unique element is present only once so we find it
# by getting the key with value 1


def find_uniq(nums)
  nums.each_with_object(Hash.new(0)) {|num, hash| hash[num] += 1}.key(1)
end


p find_uniq([1,1,1,1,0])
p find_uniq([1, 1, 1, 2, 1, 1])
p find_uniq([ 0, 0, 0.55, 0, 0 ])
