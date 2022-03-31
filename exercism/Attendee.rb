class Attendee
  def initialize(height)
    @height = height
  end

  def height
    @height
  end

  def pass_id
    @pass_id
  end

  def issue_pass!(pass_id)
    @pass_id = pass_id
  end

  def revoke_pass!
    @pass_id = nil
  end

  def has_pass?
    !self.pass_id.nil?
  end

  def fits_ride?(value)
    value <= self.height
  end

  def allowed_to_ride?(value)
    self.has_pass? && fits_ride?(value)
  end
end

pepa = Attendee.new(106)
pepa.issue_pass!(42)
puts pepa.pass_id
puts pepa.has_pass?
puts pepa.fits_ride?(99)
puts pepa.allowed_to_ride?(106)