# require_relative '../lib/vehicle.rb'
require_relative '../lib/bike.rb'

motorbike = Bike.new("Harley Davidson", "100000", "Dealdey Limited") #creates a new bike object
motorbike.show_content #show motorbikes the bike's initial details

puts "Enter an amount to use in updating bike price"
newPrice = Integer(gets.chomp)
motorbike.change_price(newPrice) #change its price
puts "Price changed:"
motorbike.show_content #showmotorbikes the bike's updated details
