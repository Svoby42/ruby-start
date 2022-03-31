class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    if @speed.between?(0, 4)
      @speed * 221
    elsif @speed.between?(5, 8)
      @speed * 221 * 0.9
    elsif @speed == 9
      @speed * 221 * 0.8
    else
      @speed * 221 * 0.77
    end
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).to_i
  end
end

puts AssemblyLine.new(6).production_rate_per_hour
puts AssemblyLine.new(6).working_items_per_minute

