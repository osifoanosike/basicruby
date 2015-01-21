require_relative '../lib/file_operation.rb'

fileOps = FileOps.new
puts "Enter the name of csv file you want to read from"
file_name = gets.chomp

fileOps.read_write(file_name)