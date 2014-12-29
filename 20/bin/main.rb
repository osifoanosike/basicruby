require_relative '../lib/interest_calc.rb'

print 'Enter principal amount: '
p = gets.chomp.to_i
print 'Enter time in years: '
t = gets.chomp.to_i

interest = Interest.new do |obj|
  obj.principal = p
  obj.time = t
  obj.rate = 10
end

puts interest.diff_in_amount