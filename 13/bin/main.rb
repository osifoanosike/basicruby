require_relative '../lib/factorial.rb'
include Factorial

puts "Finding Factorial: enter a integer value.. "

input = gets.chomp
if input.match(/[0-9]/)
	factorial(Integer(input))
else
	puts "A non-integer value was entered. Try again"
end
# factorial(6)
