#QUESTION 2
module ReplaceRegex
	def replace_regex
		puts "Please enter a text:"
		entry = gets.chomp

		altered = entry.gsub(/[aeiou]/i, '*')

		puts "the text you entered:#{entry} was modified to #{altered}"
	end
end