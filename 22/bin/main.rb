require_relative '../lib/name.rb'
begin
	puts "Enter Lastname"
	lastname = gets.chomp

	puts "Enter firstname"
	firstname = gets.chomp

	name = Name.new(lastname, firstname)
	puts name
rescue Exception => e
	puts "#{e.message} \n#{e.backtrace.inspect}"
end


