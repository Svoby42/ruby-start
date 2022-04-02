class ResistorColor
  COLORS = %w[black brown red orange yellow green blue violet grey white].freeze
  def self.value(array)
    array.take(2).map{ |color| COLORS.index(color) }.join.to_i
  end

  def self.color_code(value)
    COLORS.index(value)
  end
end

p ResistorColor.value(%w[green brown orange])
p ResistorColor.color_code("orange")