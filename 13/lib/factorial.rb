#QUESTION 13
module Factorial
	def factorial(n)
		xval = (1..n).inject { |val, n| val * n }

		puts "facorial of #{n}: #{xval}"
	end
end

