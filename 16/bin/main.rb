require_relative '../lib/highlight_search.rb'

puts "Enter a sentence you wish to search"
sentence = gets.chomp

puts "what character\(s\) do you want to search for?"
search_param = gets.chomp

searchOps = SearchOps.new
result = searchOps.search_text(sentence, search_param)

puts "Search for \"#{search_param}\" returned #{result["count"]} matches"
puts "Result: #{result["search_result"]}";