require_relative '../lib/fixnum.rb'

puts "Finding Factorial: enter a integer value.. "

input = gets.chomp
if input.match(/^\d+$/)
  result = input.to_i.factorial
  puts "facorial of #{input}: #{result}"
else
  puts "A non-integer value was entered. Try again"
end