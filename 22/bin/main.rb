require_relative '../lib/name.rb'
begin
	puts "Enter Lastname"
	lastname = gets.chomp

	puts "Enter firstname"
	firstname = gets.chomp

	Name.new(lastname, firstname)
rescue Exception => e
	puts "#{e.message} \n#{e.backtrace.inspect}"
end


