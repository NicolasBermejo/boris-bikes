require 'docking_station'

describe DockingStation do
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
    expect(subject).to respond_to(:release_bike)
  end

  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
  end
  
  describe '#release_bike' do
  it 'when there is no bike docked, it raises an error' do
    expect { subject.release_bike }.to raise_error 'There is no bikes'
    end
  end
  
  describe '#dock' do
  it 'when the docking station is full, raises an error' do
    subject.dock(Bike.new)
    expect {subject.dock(Bike.new)}.to raise_error 'There is already a bike there'
    end
  end
    
end
