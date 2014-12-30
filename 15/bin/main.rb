require_relative '../lib/prime_test.rb'

prime = PrimeOps.new
puts "\n#Question 15"
puts "Enter an integer value to find its prime numbers"
input = gets.chomp

puts input.class

if !input.match(/\d+/) #if entry isnt an integer
  puts "Non-integer value entered"
else
  puts "Prime numbers between 1 and #{input}" 
  puts "#{prime.get_primes(Integer(input)) }" 
end


