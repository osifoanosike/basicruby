require_relative '../lib/string.rb'

puts "Enter a sentence you wish to search"
sentence = gets.chomp

puts "what character\(s\) do you want to search for?"
search_param = gets.chomp

result = sentence.search_text(search_param)

puts "Search for \"#{search_param}\" returned #{result["count"]} matches"
puts "Result: #{result["search_result"]}";