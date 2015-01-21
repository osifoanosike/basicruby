require_relative '../lib/fixnum.rb'

puts "Enter a value to get its factorial, negative numbers result in errors"

input = gets.chomp
if !input.match(/^\d+$/) #if entry isnt an integer
  puts "Invalid string entry. Try again"
else
  puts "Factorial of #{input}: #{input.to_i.factorial}"
end
