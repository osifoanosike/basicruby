require_relative '../lib/sum_time.rb'
include SumTime

begin
  puts "Enter a time to add"
  time1 = gets.chomp
  puts "Enter second time value"
  time2 = gets.chomp

  sum_result = total_time(time1,time2)
  puts "Sum of  #{time1} and #{time2} results in: #{sum_result}"
rescue Exception => e
  puts "An error occured while summing up the time: #{e.message}\n#{e.backtrace.inspect} "
end
