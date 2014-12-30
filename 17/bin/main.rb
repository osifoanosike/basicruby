require_relative '../lib/sum_time.rb'
require 'date'

puts "Enter a time to add"
time1 = gets.chomp
puts "Enter second time value"
time2 = gets.chomp

sum_result = Time.total_time(time1,time2)
puts "Sum of  #{time1} and #{time2} results in: #{sum_result}"