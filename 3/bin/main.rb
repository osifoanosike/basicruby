require_relative '../lib/fibonacci.rb'

fib = FibonacciOps.new
fib.execute(1000) { |val| puts val }