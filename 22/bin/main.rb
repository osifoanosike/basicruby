require_relative '../lib/name_exception.rb'
puts "Enter your Lastname, then lastname separated with a comma.\n Note empty strings are not allowed, u could try that tho *winks*"

name = gets.chomp
name = name.split(',')

Name.new(name[0], name[1])