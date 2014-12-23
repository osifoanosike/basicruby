module FileOperation
	class FileOps
	require 'csv'

		
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
			file_dir = "/home/osifo/dev/trainings/basicruby/23/lib/#{file_name}"
			from_file = CSV.read("#{file_dir}", headers: true)

			# puts from_file
			headers = []
			from_file.each do |header|
				headers << header[" Designation"].to_s.strip!
			end
			# puts headers
			
			# from_file.headers.sort.each do |header|
			# 	p header
			# end

			from_file.each do |row|
				headers.each do |header|
					puts "#{row["Name"]} (EmpId:#{row[" EmpId"]})" if row[" Designation"].to_s.strip == header
				end			
			end
			
			# from_file.headers.sort.each do |header|
			# 	p header.strip
			# 	p from_file["#{header}"]
			# end

		end

		def read_by_column(file_name)
			file_dir = "/home/osifo/dev/playground/ruby/#{file_name}"
			column_data = []
			count = 0
			# CSV.foreach("#{file_dir}") do |row|
			# 	column_data[count] = row[count]
			# 	count += 1
			# 	puts row.inspect
			# end

			CSV.foreach("#{file_dir}") do |row|
				# column_data << "#{row[0]} : #{row[1]} : #{row[2]}"
				column_data << row[1]
				count += 1
				
			end
			puts column_data.inspect
			# puts column_data
		end

		def write_to_file(read_source)
			file_dir = "/home/osifo/dev/playground/ruby/"
			# read_source = "file_dir#{read_source}"

			source = read_from_file("file_dir#{read_source}")
			puts source.inspect

			# CSV.open("#{file_dir}/new_write.txt") do |content|

			# end
		end

	end
end