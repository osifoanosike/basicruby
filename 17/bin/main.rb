require_relative '../lib/sum_time.rb'
include SumTime

timeOps = TimeOps.new
#Question 17
puts "\n#Question 17"
timeOps.sum_time("11:23:07","22:53:45")
# sum_time("11:23:07","22:53:45","0:23:23","23:45:56")