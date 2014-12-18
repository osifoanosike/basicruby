class Interest


end


#QUESTION 21
def factorial_exception(n)
	raise TypeError, "Negative numbers are not acccepted" if n < 0 
	xval = (1..n).inject { |val, n| val * n }

	puts "facorial of #{n}: #{xval}"
end




#QUESTION 22
class Name

	def initialize(lastname, firstname)
		if lastname.empty? || firstname.empty?
			raise "Neither Lastname nor Firstname value can be null"
		elsif !firstname[0].match(/[A-Z]/)
			raise "First name must start with an uppercase letter"
		else
			@lastname = lastname
			@firstname = firstname
			puts "Name: #{lastname}, #{firstname}"
		end	
	end
end


#QUESTION 23



#QUESTION 21
factorial_exception(4)


#Question 22
Name.new("tobi", "Anthony")