require_relative '../lib/reverse_sentence.rb'
include ReverseSentence

#QUESTION 14
puts "\n#QUESTION 14"

puts "Enter a sentence you'd like to reverse"
input = gets.chomp
# reverse_sentence("Titobi is not at home and he's 10 too")
reverse_sentence(input)