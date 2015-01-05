require_relative '../lib/pascal.rb'
pascal = Pascal.new

puts "Pascal Triangle Calculator\nPlease enter maximum number:"
max = gets.chomp.to_i

pascal.draw_triangle(max) {|x| print "#{x} " } 
puts