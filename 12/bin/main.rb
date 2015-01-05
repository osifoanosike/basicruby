require_relative '../lib/string.rb'

puts "\n#Question 12: character count"
puts "Enter any sentence for analysis"

string_param = gets.chomp
result = string_param.get_case_count
# get_case_count("Titobi is not at home and he's 10 too.")
puts "Analysis of the sentence: #{string_param} reults in: \n#{result}"
