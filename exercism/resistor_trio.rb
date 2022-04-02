class ResistorColorTrio
  attr_reader :value

  VALUES = %w[black brown red orange yellow green blue violet grey white].freeze

  def initialize(colors)  # %w[blue grey brown]
    @colors = colors
  end

  def label
    quantity = ""
    unit = ""
    if ohms.to_i < 1000
      quantity = ohms
      unit = "ohms"
    else
      quantity = ohms / 1000
      unit = "kiloohms"
    end
    "Resistor value: #{quantity} #{unit}"
  end

  def ohms
      values = @colors.map { |color| VALUES.index(color) or raise ArgumentError } # [6, 8, 1], so there is 1 zero after 68, so the result is 680 ohms
      multiplier = 10**values.pop   # values.pop returns the last element, in this case it is 1
      values.join.to_i * multiplier # 68 * 10 = 680
  end
end

p ResistorColorTrio.new(%w[blue grey brown]).label
p ResistorColorTrio.new(%w[yellow purple black]).label