require_relative '../lib/fixnum.rb'

puts "Enter a value to get its factorial, negative numbers result in errors"


begin
	input = Integer(gets.chomp)

	if !input.match(/^[0-9]+$/) #if entry isnt an integer
	  puts "Non-integer value entered .Try again"
	else
	  puts "Factorial of #{input}: #{input.to_i.factorial}"
	end
rescue ArgumentError => e
	puts  "Valued entered not an integer \n#{e.backtrace.inspect}"
end
