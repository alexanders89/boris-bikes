class Bike

  attr_accessor :broken

  def initialize(broken = false)
    @broken = broken
  end

  def bike_is_working?
    true
  end

  def report_broken
    @broken = true
  end

end
