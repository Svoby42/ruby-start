class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
     @line[@line.index(' ') + 1, @line.length].strip
  end

  def log_level
    @line[0, @line.index(' ')].tr('[]:','').downcase
  end

  def reformat
    "#{message} (#{log_level.downcase})"
  end
end

puts LogLineParser.new('[ERROR]: Invalid operation').message
puts LogLineParser.new('[ERROR]: Invalid operation').log_level
puts LogLineParser.new('[INFO]: Operation completed').reformat