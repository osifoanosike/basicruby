require_relative '../lib/name.rb'
puts "Enter your Lastname, then lastname separated with a comma.\nNote empty strings are not allowed, u could try that tho *winks*"

name = gets.chomp

Name.new(name)