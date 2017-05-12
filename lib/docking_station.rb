require_relative 'bike'

class DockingStation

  DEFAULT_CAPACITY = 20

  def initialize( capacity = DEFAULT_CAPACITY )
    @bikes = []
    @capacity = capacity
  end

attr_reader :bikes, :capacity

  def release_a_bike
    raise "No more bikes!" if empty?
    @bikes.pop
  end

  def dock_a_bike(bike)
    raise "No more space!" if full?
    @bikes << bike
  end

  def dock_a_broken_bike(bike)
    bike.report_broken
    @bikes << bike
  end

  def working_bikes_available
    @bikes.any? { |bike| bike.bike_is_working?}
  end


  private

  def full?
    @bikes.count >= DEFAULT_CAPACITY
  end

  def empty?
     @bikes.empty?
  end

end
