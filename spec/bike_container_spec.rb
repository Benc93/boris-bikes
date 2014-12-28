require_relative '../lib/bike_container' 

class ContainerHolder; include BikeContainer; end

  describe BikeContainer do 

    let(:holder)        { ContainerHolder.new }
    let(:working_bike)  { double :bike, broken?: false}
    let(:broken_bike)   { double :bike, broken?: true}
    let(:fictional_bike){ double :bike, broken?: false}
    
  

    it "should accept a bike" do 
      expect(holder.bike_count).to eq(0)
      holder.dock(working_bike)
      expect(holder.bike_count).to eq(1)
    end

    it "Should release a bike" do 
      holder.dock(working_bike)
      holder.release(working_bike)
      expect(holder.bike_count).to eq(0)
    end

    it "Should know when its full" do
      holder.capacity.times {holder.dock(working_bike)}
      expect(holder).to be_full
    end

    it "Should not accept a bike when it is at full capacity" do
      holder.capacity.times {holder.dock(working_bike)}
      expect(lambda {holder.dock(working_bike)}).to raise_error(RuntimeError)
    end

    it "should give a list of available bikes" do 
      holder.dock(working_bike)
      holder.dock(broken_bike)
      expect(holder.available_bikes).to eq([working_bike])
    end

    it "should not release a bike when there are none there" do 
      expect{holder.release(fictional_bike)}.to raise_error(NoBikeError)
    end

    it "should know when its empty" do 
      expect(holder).to be_empty
    end 


 
end

