module PascalTriangle
	class Pascal
		def factorial(val)
			return 1 if val <= 1
			fac = (1..val).inject { |result, x| result * x }
			return fac
		end

		def triangle_row(max)
			for i in 0..max
				# puts "max: #{max}, factorial of #{max}: #{factorial(max)}"
				# puts "i: #{i}, max: #{max}, max - i = #{max - i},  max: #{factorial(max - i)}"
				yield(factorial(max) / (factorial(i) * factorial(max - i)))
				# yield(fact(n)/(fact(k)*fact(n-k)))
			end
		end

		def execute(row)
			count = 0
			while(count <= row)
				# print count
				triangle_row(count) { |x| yield(x) }
				count+=1
			end
		end
	end
end