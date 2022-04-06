def duplicate_count(text)
  sum = 0
  text = text.to_s.chars.sort
  text = text.map{|char| char.downcase}
  text.uniq.length.times do |index|
    if text.count(text.uniq[index]) > 1
      sum += 1
    end
  end
  sum
end

p duplicate_count("")
p duplicate_count("abcde")
p duplicate_count("abcdeaa")
p duplicate_count("abcdeaB")
p duplicate_count("Indivisibilities")

