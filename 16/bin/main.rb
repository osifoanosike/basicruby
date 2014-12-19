require_relative '../lib/highlight_search.rb'
include HighlightSearch

#Question 16
puts "\n#Question 16"

puts "Enter a sentence"
sentence = gets.chomp

puts "what character\(s\) do you want to search for?"
search = gets.chomp
# search_text("Titobi is not at home and he's 10 too", "t")
search_text(sentence, search)