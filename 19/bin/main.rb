require_relative '../lib/sum_time.rb'
include SumTime
sum_result = total_time('11:23:07', '0:23:23', '22:53:45', '23:45:56')
puts "Sum of time results in: #{sum_result}"



