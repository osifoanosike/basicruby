require_relative '../lib/fixnum.rb'
require_relative '../lib/bad_argument.rb'

puts "Enter a value to get its factorial, negative numbers result in errors"


begin
	input = gets.chomp

	if input.match(/\D+/) #if entry isnt an integer
	  puts "Invalid string entry. Try again"
	else
	  puts "Factorial of #{input}: #{input.to_i.factorial}"
	end
rescue BadArgumentError => e
	puts  "An error occurred: #{e.message}"
end
