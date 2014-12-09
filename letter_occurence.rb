#Count the ocurrences of various alphabet letters in an input string and store it in hash.

#QUESTION 1
def check_occurence(string)
	#creates a hash to hold frequency
	freq = Hash.new(0) 

	#checks if the hash has a key containing the value
	string.scan() do |xter|
		if freq.keys.grep(/#{xter}/i)
			(freq[xter] = freq[xter] + 1)
		else
			freq[xter] = 1
		end
	end
	
	puts freq
end


#QUESTION 2
def replace_regex
	puts "Please enter a text:"
	entry = gets.chomp


	altered = entry.gsub(/[aeiou]/i, '*')

	puts "the text you entered was modified to #{altered}"
end


# check_occurence("Oluwatobiloba")

replace_regex