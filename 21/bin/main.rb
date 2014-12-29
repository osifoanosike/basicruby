require_relative '../lib/factorial_exception.rb'
include FactorialException
fac = FactorialOps.new
puts "Enter a value to get its factorial, negative numbers result in errors"
input = gets.chomp

if !input.match(/\d+/) #if entry isnt an integer
  puts "Non-integer value entered .Try again"
else
  fac.factorial_exception(Integer(input))
end

