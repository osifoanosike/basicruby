#QUESTION 16
module HighlightSearch
	def search_text(text, search_param)
		match_count = 0
		result = text.gsub!(/#{search_param}/) do |match|
			match_count += 1
			"(#{match})"
		end
		 
		# puts "#text: #{text}, search: #{search_param}"

		puts "Search for \"#{search_param}\" returned #{match_count} matches"
		puts "Result: #{result}";
	end
end