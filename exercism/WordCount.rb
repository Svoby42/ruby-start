class Phrase
  def initialize(phrase)
    @words = phrase.downcase.scan(/\b[\w']+\b/)
  end

  def word_count
    occurrence = Hash.new(0)
    @words.each do |word|
      occurrence[word] += 1
    end
    occurrence
  end
end

x = Phrase.new("\"That's the password: 'PASSWORD 123'!\", cried the Special Agent.\nSo I fled.")
p x.word_count