require_relative '../lib/character_count.rb'
include CharacterCount


puts "\n#Question 12"

puts "Enter any sentence for analysis"
input = gets.chomp
# get_case_count("Titobi is not at home and he's 10 too.")

get_case_count(input)