require 'bike_container'

class ContainerHolder; include BikeContainer; end

  describe BikeContainer do 

    let(:bike) {Bike.new}
    let(:holder) { ContainerHolder.new }

    def break!
    @broken = true
    end

    it "should accept a bike" do 
      expect(holder.bike_count).to eq(0)
      holder.dock(bike)
      expect(holder.bike_count).to eq(1)
    end

    it "Should release a bike" do 
      holder.dock(bike)
      holder.release(bike)
      expect(holder.bike_count).to eq(0)
    end

    it "Should know when its full" do
      holder.capacity.times {holder.dock(bike)}
      expect(holder).to be_full
    end

    it "Should not accept a bike when it is at full capacity" do
      holder.capacity.times {holder.dock(bike)}
      expect(lambda {holder.dock(bike)}).to raise_error(RuntimeError)
    end

    it "should give a list of available bikes" do 
      working_bike, broken_bike = Bike.new, Bike.new
      broken_bike.break!
      holder.dock(broken_bike)
      holder.dock(bike)
      expect(holder.available_bikes).to eq([bike])
    end

end