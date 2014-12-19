require_relative '../lib/fibonacci.rb'
include Fibonacci

execute(1000) { |val| puts val }