require_relative '../lib/interest_calc.rb'
include InterestCalc

obj = Interest.new("osifo") { |x| "my name is #{x}" }
puts obj