require_relative '../lib/file_operation.rb'

begin
  file_ops = FileOperation.new
  puts "Enter the name of csv file you want to read from"
  file_name = gets.chomp

  fileOps.read_write(file_name)
rescue Exception => e
  puts "Oops! something has gone wrong: #{e.message}\n#{e.backtrace.inspect}"
end
