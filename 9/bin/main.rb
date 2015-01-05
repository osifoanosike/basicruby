require_relative '../lib/array.rb'

puts "Enter a comma separated list of items"
input = gets.chomp

arr = input.split(',')
puts "Array Hash: #{arr.create_hash}"
