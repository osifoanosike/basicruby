require_relative '../lib/string.rb'

puts "\n#Question 12: character count"
puts "Enter any sentence for analysis"

string_param = gets.chomp
result = string_param.get_case_count

puts "Analysis of the sentence: #{string_param} reults in: \n#{result}"
