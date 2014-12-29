require_relative '../lib/power_array.rb'
include PowerArray

puts "Enter a list of comma separated values"
arr = gets.chomp.split(',').map(&:to_i)
puts "What power do you want raise the elements to?"
pow = Integer(gets.chomp)

arr = ArrayX.new(arr)
puts "The Power Array is: #{arr.power(pow)}"
