sentence = "The quick brown fox jumps over the lazy dog"

i = sentence.length
x = 0
reversed = [sentence.length]

while i >= 0 do
  #print sentence[i]
  reversed[x] = sentence[i]
  i -= 1
  x += 1
end

p reversed

i = reversed.length
j = 0
start = reversed.length
finish = 0

while i >= 0 do
  if reversed[i] == " " || i == 0
    finish = i
    j = finish
    while j <= start do
      print reversed[j]
      j += 1
    end
    start = finish
  end
  i -= 1
end