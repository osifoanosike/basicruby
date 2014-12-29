require_relative '../lib/PascalTriangle.rb'
include PascalTriangle
pascal = Pascal.new
pascal.execute(7) {|x| print "#{x} " } 