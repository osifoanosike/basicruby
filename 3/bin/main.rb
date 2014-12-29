require_relative '../lib/fibonacci.rb'
include Fibonacci
fib = FibonacciOps.new
fib.execute(1000) { |val| puts val }