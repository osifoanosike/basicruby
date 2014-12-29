require_relative '../lib/character_count.rb'

puts "\n#Question 12: character count"
puts "Enter any sentence for analysis"

string_param = gets.chomp
charOps = CharacterOps.new
result = charOps.get_case_count(string_param)
# get_case_count("Titobi is not at home and he's 10 too.")
puts "Analysis of the sentence: #{string_param} reults in: \n#{result}"
