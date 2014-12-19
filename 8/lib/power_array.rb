module PowerArray
	class ArrayX < Array 
		#suqestion 8
		def power(x)
			puts self.class
			self.map { |element| element ** x }
		end
	end
end