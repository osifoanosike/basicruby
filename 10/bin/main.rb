require_relative '../lib/array.rb'

puts"enter a comma-seperated list of array elements"

input = gets.chomp
puts "Array Hash: #{ input.split(',').sort_even_odd }"
