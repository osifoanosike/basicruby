require_relative '../lib/fixnum.rb'

#user input value is fixed ti 1000 as sepcified in question
puts "fibonacci sequence for #{1000} is:"
1000.fibonacci_sequence { |val| puts val }