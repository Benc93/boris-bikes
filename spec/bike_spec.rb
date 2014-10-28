require_relative '../lib/bike'

describe Bike do
  it 'is NOT broken when created' do
    new_bike = Bike.new
    expect(new_bike).not_to be_broken
    expect(new_bike.broken?).to be false  
  end

  it 'can break' do 
    broken_bike = Bike.new
    broken_bike.break!
    expect(broken_bike).to be_broken
  end

  it 'can be fixed' do
    broken_bike = Bike.new
    broken_bike.break!
    broken_bike.fix!
    expect(broken_bike).not_to be_broken
  end


end