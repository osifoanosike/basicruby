require_relative '../lib/reverse_sentence.rb'
sentence = SentenceOps.new

puts "Enter a sentence you'd like to reverse"
input = gets.chomp

puts "Actual sentence: #{sentence}\nReversed sentence: #{sentence.reverse_sentence(input)}"

