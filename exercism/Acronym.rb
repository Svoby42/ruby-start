class Acronym
  def self.abbreviate(string)
    string.split(/\W/).map(&:chr).join.upcase
  end
end

puts Acronym.abbreviate("pepek namornik")