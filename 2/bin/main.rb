require_relative '../lib/string.rb'

puts "Please enter a text:"
entry = gets.chomp

puts "the text you entered:#{entry} was modified to #{entry.replace_regex}"