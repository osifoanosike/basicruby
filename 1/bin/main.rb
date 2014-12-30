require_relative '../lib/check_occurrence.rb'

occur = Occurrence.new
puts "enter string to evaluate"
string = gets.chomp

occur.evaluate(string)