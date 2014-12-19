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
	
	puts "the frequecy of alphabets in the string #{string} is: #{freq}"
end


#QUESTION 2
def replace_regex
	puts "Please enter a text:"
	entry = gets.chomp


	altered = entry.gsub(/[aeiou]/i, '*')

	puts "the text you entered:#{entry} was modified to #{altered}"
end


#QUESTION 3
def fibonacci(max_val)
	init1 = 0
	init2 = 1

	while init1 <= max_val
		yield init1

		temp = init1
		init1 = init2
		init2 = temp + init1
	end
end



#QUESTION 4
def is_palindrome?(string)
	string  == string.reverse ? true : false
end

def palindrome
	puts "Enter a word or hit Q/q to exit"
	input = gets.chomp

	until input.match(/q/i) do #this continues to recieve input until condition fails
		response = is_palindrome?(input) ? "Yep!, a palindrome"  : "Nah.. not a plaindrome"
		puts response

		palindrome #Does a recursive call on this method
	end
	abort("closing program..")
end


#question 1
puts"#Question 1"
# check_occurence("peteer joshua")

#question 2
# replace_regex


#question3


#question4
palindrome