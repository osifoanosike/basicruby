require_relative '../lib/PascalTriangle.rb'
pascal = Pascal.new

puts "Pascal Triangle Calculator\nPlease enter maximum number:"
max = gets.chomp.to_i

pascal.execute(max) {|x| print "#{x} " } 
puts