#QUESTION 3
module Fibonacci
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
end