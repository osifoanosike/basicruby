#QUESTION 14
module ReverseSentence
	def reverse_sentence(sentence)
		s_arr = sentence.split(' ').reverse!.join(' ') #reverses in-place
		# result = s_arr.join(' ')

		puts "Actual sentence: #{sentence}\nReversed sentence: #{s_arr}"
	end
end