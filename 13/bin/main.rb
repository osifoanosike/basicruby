require_relative '../lib/factorial.rb'
fac = FactorialOps.new

puts "Finding Factorial: enter a integer value.. "

input = gets.chomp
if input.match(/[0-9]/)
	result = fac.factorial(Integer(input))
	puts "facorial of #{input}: #{result}"
else
	puts "A non-integer value was entered. Try again"
end
# factorial(6)
