require_relative '../lib/prime_test.rb'
include PrimeTest

prime = PrimeOps.new
#Question 15
puts "\n#Question 15"
puts "Enter an integer value to find its prime numbers"
input = gets.chomp

puts input.class

if !input.match(/\d+/) #if entry isnt an integer
  puts "Non-integer value entered"
else
  prime.get_primes(Integer(input)) 
end


