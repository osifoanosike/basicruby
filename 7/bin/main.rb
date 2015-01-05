require_relative '../lib/string.rb'

puts "This illustrates an overriding of the \"to_s\" method"
puts "enter a string to be inverted"

input = gets.chomp
test = String.new("#{input}")
puts "Inverted string: #{test.to_s}"