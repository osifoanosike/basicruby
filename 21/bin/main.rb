require_relative '../lib/fixnum.rb'

puts "Enter a value to get its factorial, negative numbers result in errors"


begin
	input = gets.chomp

	if input.match(/^\D+$/) #if entry isnt an integer
	  puts "Invalid string entry. Try again"
	else
	  puts "Factorial of #{input}: #{input.to_i.factorial}"
	end
rescue ArgumentError => e
	puts  "An error occurred: #{e.message} \n#{e.backtrace.inspect}"
end
