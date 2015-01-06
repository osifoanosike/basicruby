require_relative 'vehicle.rb'

class Bike < Vehicle
  def initialize(name, price, dealer)
    @name = name
    @price = Float(price)
    @dealer = dealer
  end
end