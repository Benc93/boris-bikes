require 'van.rb'

  describe 'van' do
    
    let(:van) { Van.new(:capacity => 123) }

    def fill_van(van)
    20.times { van.dock(Bike.new)}
    end

    it "Should allow default capacity on initialization" do 
      expect(van.capacity).to eq(123)
    end


  end