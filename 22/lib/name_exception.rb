
module NameException
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
end
