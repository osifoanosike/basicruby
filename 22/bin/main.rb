require_relative '../lib/name_exception.rb'
include NameException

#Question 22

puts "Enter your Lastname, then lastname separated with a comma.\n Note empty strings are not allowed, u could try that tho *winks*"

name = gets.chomp
# puts name[0].class
# puts name[1].class
name = name.split(',')

Name.new(name[0], name[1])