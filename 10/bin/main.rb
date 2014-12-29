require_relative '../lib/hash_inject.rb'

#QUESTION 10
puts"enter a comma-seperated list of array elements"
string = gets.chomp
arr3 = Array[15, "age", 3, "footballer", "footballee", "Josh"]
arr3.do_grouping
