class DockingStation
  attr_reader :bikes, :capacity
  DEFAULT_CAPACITY = 20
  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end  
  
  def release_bike
    fail 'There is no bikes' unless empty?
    @bikes.pop
  end

  def dock(bike)
    fail 'There is already a bike there' if full?
    @bikes << bike
  end


private

  def full?
    if @bikes.length >= @capacity
      true
    else
      false
    end
  end
  
  def empty?
    if @bikes.length >=1
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