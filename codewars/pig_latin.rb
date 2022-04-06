def pig_it(string)
  string = string.split(" ")
  arr = []
  string.each do |word|
    arr << word[1..word.length] + word[0] + "ay" if word =~ /\w/ # don't add ay if the word is just a special character, not a word, \w regex matches words
    arr << word if word =~ /\W/   # \W regex matches any non-word character
  end
  arr.join(" ")
end

p pig_it('Pig latin is cool')
p pig_it('O tempora o mores !')

x = "Pig latin is cool"
