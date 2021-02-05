class DockingStation
  attr_reader :bike
  def initialize
    
  end  
  
  def release_bike
    fail 'There is no bikes' unless @bike
    @bike
  end

  def dock(bike)
    fail 'There is already a bike there' if @bike
    @bike = bike
  end
end

class Bike
  def working?
    true
  end
end