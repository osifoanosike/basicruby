
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

class FileOps
	require 'csv'

	def read_per_row
		# require 'CSV'
		count = 0
		vals = CSV.foreach("/home/osifo/dev/playground/ruby/another.csv") { |line| puts "line #{count+=1}. #{line.to_s}" }
		#puts "file content #{vals}"
	end

	def read_file
		content = CSV.read("/home/osifo/dev/playground/ruby/my_new_file.csv")
		puts content
	end

	def write_to_file(file_name)
		csv_file = File.open("/home/osifo/dev/playground/ruby/#{file_name}", "wb")
		# puts csv_file.path
		CSV.open("#{csv_file.path}", "wb") do |content|
			content << ["Lastname", "Firstname", "Email Address"]
			content << ["Anosike", "Borderless", "osifo@dealdey.com"]
		end
	end

	def read_from_file(file_name)
		# csv_file = File.open("/home/osifo/dev/playground/ruby/#{file_name}")
		file_dir = "/home/osifo/dev/playground/ruby/#{file_name}"

		CSV.open("long_path#{file_dir.path}", "r+") do |content|
			content << ["Developer", ".NET, RoR, HTML5, Javascript, CSS3", "Male"]
		end

	end

end




#QUESTION 21
factorial_exception(4)


#Question 22
Name.new("tobi", "Anthony")

fileOps = FileOps.new

puts "Output of READ_PER_ROW"
fileOps.read_per_row

puts "Output of WRITE_TO_FILE"
# fileOps.write_to_file("another.csv")

puts "Output of READ_FILE"
fileOps.read_file