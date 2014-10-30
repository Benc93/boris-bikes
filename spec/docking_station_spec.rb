require './lib/docking_station'

describe 'docking station' do 

  let(:station) { DockingStation.new(:capacity => 123) }

  def fill_station(station)
    20.times { station.dock(Bike.new)}
  end


  it "should allow default setting capacity on initialization" do
    expect(station.capacity).to eq(123)
  end

  
end