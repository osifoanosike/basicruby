require_relative '../lib/string.rb'

puts "Enter a sentence you'd like to reverse"
input = gets.chomp

puts "Actual sentence: #{ input }\nReversed sentence: #{ input.reverse_sentence
}"

