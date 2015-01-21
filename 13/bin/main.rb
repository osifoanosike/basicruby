require_relative '../lib/integer.rb'

puts "Finding Factorial: enter a integer value.. "

input = gets.chomp
begin
	if input.match(/^[-+]\d+$/)
	  result = input.to_i.factorial
	  puts "facorial of #{input}: #{result}"
	else
	  puts "A non-integer value was entered. Try again"
	end
rescue Exception => e
	puts "An error ocurred: #{e.message}"
end