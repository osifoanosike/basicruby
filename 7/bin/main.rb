require_relative '../lib/inverse_case.rb'

puts "This illustrates an overriding of the \"to_s\" method"
puts "enter a string to be inverted"

input = gets.chomp
test = MySentence.new("#{input}")
puts "Inverted string: #{test.to_s}"