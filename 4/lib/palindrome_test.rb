module PalindromeTest
#QUESTION 4
	def is_palindrome?(string)
		string  == string.reverse ? true : false
	end

	def execute
		puts "Enter a word or hit Q/q to exit"
		input = gets.chomp

		until input.match(/q/i) do #this continues to recieve input until condition fails
			response = is_palindrome?(input) ? "Yep!, a palindrome"  : "Nah.. not a plaindrome"
			puts response

			execute #Does a recursive call on this method
		end
		abort("closing program..")
	end
end