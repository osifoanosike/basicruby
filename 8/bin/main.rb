require_relative '../lib/array.rb'

puts "Enter a list of comma separated integer values"
arr = gets.chomp.split(',').map(&:to_i)
puts "What power do you want raise the elements to?"
pow = Integer(gets.chomp)

puts "The Power Array is: #{arr.power(pow)}"
