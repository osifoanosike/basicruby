module InverseCase
#QUESTION7
	class MySentence
		def initialize(sentence)
			@sentence = sentence
		end

		def to_s
			 altered = @sentence.split(" ").each { |word| word = word.swapcase! }.join(" ")
		end
	end
end