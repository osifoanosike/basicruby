require_relative '../lib/fixnum.rb'

# prime = PrimeOps.new
puts "\n#Question 15"
puts "Enter an integer value to find its prime numbers"
input = gets.chomp

if !input.match(/\d+/) #if entry isnt an integer
  puts "Non-integer value entered"
else
  puts "Prime numbers between 1 and #{input}" 
  puts "#{input.to_i.get_primes}" 
end


