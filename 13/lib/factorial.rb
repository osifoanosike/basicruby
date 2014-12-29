#QUESTION 13
module Factorial
	class FactorialOps
		def factorial(n)
			xval = (1..n).inject { |val, n| val * n }

			puts "facorial of #{n}: #{xval}"
		end
	end
end

