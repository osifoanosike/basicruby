require_relative '../lib/interest.rb'

print 'Enter principal amount: '
principal = gets.chomp.to_f 

print 'Enter time span: '
time = gets.chomp.to_i

if principal.nil? || time.nil?
  raise "Null values are not allowed for Principal or Time"
else
  interest = Interest.new do |i|
    i.principal = principal
    i.time = time
  end

  puts "Interest Difference: #{ interest.diff_in_amount }"
end