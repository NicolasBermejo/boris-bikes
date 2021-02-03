require 'docking_station'

describe DockingStation do
  describe '#initialize' do
    it 'creates a new DockingStation' do
      expect { DockingStation.new }.to_not raise_error
    end
  end

  it 'docks the current bike to the docking station' do
      expect(subject).to respond_to(:dock).with(1).argument
  end
  
  it 'docks bike' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq bike
  end
  
  it 'returns contained bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bike).to eq(bike)
  end

  it 'responds to release_bike' do
    expect(subject).to respond_to :release_bike
  end

  it 'returns a bike' do
   expect(subject.release_bike.class).to eq Bike
  end

   it 'returns a working bike' do
     expect(subject.release_bike.working?).to be true
   end
end
