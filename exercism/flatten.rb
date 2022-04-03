module FlattenArray
  extend self
  def flatten(value)
    value.flatten.compact #compact removes nil from a given array
  end
end