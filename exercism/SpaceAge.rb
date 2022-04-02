class SpaceAge
  YEAR_SECONDS = 31_557_600

  def initialize(num)
    @num = num.to_f
  end

  def on_earth
    (@num / YEAR_SECONDS).round(2)
  end

  def on_mercury
    ((@num / YEAR_SECONDS) / 0.2408467).round(2)
  end

  def on_venus
    ((@num / YEAR_SECONDS) / 0.61519726).round(2)
  end

  def on_mars
    ((@num / YEAR_SECONDS) / 1.8808158).round(2)
  end

  def on_saturn
    ((@num / YEAR_SECONDS) / 29.447498).round(2)
  end

  def on_uranus
    ((@num / YEAR_SECONDS) / 84.016846).round(2)
  end

  def on_neptune
    ((@num / YEAR_SECONDS) / 164.79132).round(2)
  end

  def on_jupiter
    ((@num / YEAR_SECONDS) / 11.862615).round(2)
  end
end

x = SpaceAge.new(1_000_000_000)
p x.on_earth
x = SpaceAge.new(2_134_835_688)
p x.on_mercury
x = SpaceAge.new(2_329_871_239)
p x.on_mars
x = SpaceAge.new(901_876_382)
p x.on_jupiter