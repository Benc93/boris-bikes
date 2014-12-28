require 'bike_container'
require 'bike'

  class Garage 

    include BikeContainer

    def initialize(options = {})
      self.capacity=(options.fetch(:capacity, capacity))
    end

    def repair
      bikes.map {|bike| bike.fix!}
    end

  end