class DockingStation
  attr_reader :working_bikes, :broken_bikes, :capacity
  DEFAULT_CAPACITY = 20
  def initialize(capacity = DEFAULT_CAPACITY)
    @working_bikes = []
    @broken_bikes = []
    @capacity = capacity
  end

  def release_bike
    fail 'There is no bikes' unless empty?
    @working_bikes.pop
  end

  def dock(bike)
    fail 'There is already a bike there' if full?
    if bike.working == true
      @working_bikes << bike
    else
      @broken_bikes << bike
    end
  end


private

  def full?
    if @working_bikes.length + @broken_bikes.length >= @capacity
      true
    else
      false
    end
  end

  def empty?
    if @working_bikes.length >=1
      true
    else
      false
    end
  end

end

class Bike
  def working?
    true
  end
end
