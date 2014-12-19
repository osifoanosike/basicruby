require_relative '../lib/check_occurrence.rb'
include CheckOccurrence

puts "enter string to evaluate"
input = gets.chomp
evaluate(input)