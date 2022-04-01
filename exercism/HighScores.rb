class HighScores
  attr_accessor :scores

  def initialize(scores)
    @scores = scores
  end

  def latest
    scores.last
  end

  def personal_best
    scores.max
  end

  def personal_top_three
    scores.max(3)
  end

  def latest_is_personal_best?
    self.latest == scores.max
  end
end

x = HighScores.new([10, 30, 90, 30, 100, 20, 10, 0, 30, 40, 40, 70, 70])
p x.latest
p x.scores
p x.personal_best
p x.personal_top_three
x = HighScores.new([70, 40, 10, 100])
p x.latest_is_personal_best?