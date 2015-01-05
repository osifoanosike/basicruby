require_relative '../lib/sum_time.rb'
include SumTime

begin
  puts "Enter a time to add"
  time1 = gets.chomp
  puts "Enter second time value"
  time2 = gets.chomp

  sum_result = SumTime.total_time(time1,time2)
  puts "Sum of  #{time1} and #{time2} results in: #{sum_result}"
rescue
  puts "An error occured while summing up the time."
end
