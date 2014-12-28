require 'garage.rb'
require 'bike.rb'

  describe 'garage' do 


    let(:garage)        { Garage.new(:capacity => 100) }
    let(:bike)          { Bike.new}




    it "should fix broken bikes" do
      bike.break!
      garage.dock(bike)
      garage.repair
      expect(bike).not_to be_broken
      expect(garage.available_bikes).to eq garage.bikes
    end

  end
