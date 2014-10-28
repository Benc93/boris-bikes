require './lib/docking_station'

describe 'docking station' do 

  let(:bike) { Bike.new }
  let(:station) { DockingStation.new }

  it "should accept a bike" do
    bike = Bike.new
    station = DockingStation.new
    #we're expecting the station to contain 0 bikes
    expect(station.bike_count).to eq(0)
    #then dock a bike in the station
    station.dock(bike)
    #now we expect the station to have 1 bike
    expect(station.bike_count).to eq(1)
  end

  it "should release a bike" do
    station.dock(bike)
    station.release(bike)
    expect(station.bike_count).to eq(0)
  end

end