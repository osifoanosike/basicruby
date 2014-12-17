#QUESTION 12
def get_case_count(string_param)
	count_cup = { "lowercase" => 0, "uppercase" => 0, "digits" => 0, "special" => 0 }
	
	string_param[0..string_param.length].each_char do |xter|
		case
		when xter.match(/[a-z]/)
			count_cup["lowercase"] += 1
		when xter.match(/[A-Z]/)
			count_cup["uppercase"] += 1
		when xter.match(/\d/)
			count_cup["digits"] += 1
		else
			count_cup["special"] += 1
		end
	end
	puts "Analysis of the sentence: #{string_param} reults in: \n#{count_cup}"
end

#QUESTION 13
def factorial(n)
	xval = (1..n).inject { |val, n| val * n }

	puts "facorial of #{n}: #{xval}"
end


#QUESTION 14
def reverse_sentence(sentence)
	s_arr = sentence.split(' ').reverse!.join(' ') #reverses in-place
	# result = s_arr.join(' ')

	puts "Actual sentence: #{sentence}\nReversed sentence: #{s_arr}"
end



#just a test method
def step_test
	3.upto(6) do |x|
		puts " "
		x.upto(x + 2) do |i|
			print "#{i}\t"
		end
	end
end

#QUESTION 15
def get_primes(top_nos)
	primes = []
	
	2.upto(top_nos) do |curr_val|
		is_composite = false
		#check if the nos is prime
		2.step(curr_val-1, 1) do |i|
			is_composite = curr_val % i == 0
			# puts "#{is_composite}  divison: #{i}, curr_val: #{curr_val}"
			break if is_composite #lvs loop once a modulus returns true
		end
		# puts "#{curr_val} is is composite, #{is_composite}"
		primes << curr_val if !is_composite
		
	end
	puts "Prime numbers between 1 and #{top_nos}"
	print "#{primes}\n"
end



#QUESTION 16
def search_text(text, search_param)
	match_count = 0
	result = text.gsub!(/#{search_param}/) do |match|
		match_count += 1
		"(#{match})"
	end
	 
	# puts "#text: #{text}, search: #{search_param}"

	puts "Search for \"#{search_param}\" returned #{match_count} matches"
	puts "Result: #{result}";
end


def sum_time(time1, time2)
	timeA = time1.split(':').map(&:to_i)
	timeB = time2.split(':').map(&:to_i)
	sum = []
	#convert all time fragments to seconds
	#hours
	timeA[0], timeB[0] = timeA[0] * 60 * 60, timeB[0] * 60 * 60

	#minutes
	timeA[1], timeB[1] = timeA[1] * 60, timeB[1] * 60

	#seconds
	sum[2] = timeA[2] + timeB[2]
	if sum[2] > 60
		sum[2] = sum[2] - 60
		timeA[1] += 60
	end

	# minutes
	sum[1] = timeA[1] + timeB[1]
	if sum[1]> 3600
		sum[1] = sum[1] - 3600
		timeA[0] += 3600
	end

	#hour
	sum[0] = (timeA[0] + timeB[0])
	
	sum[0] /= 3600 #convert back to hours
	sum[1] /= 60 #convert back to minutes

	if sum[0] > 24 #group into days
		sum[0] = "1 day & #{sum[0] % 24}"
	end
	puts sum.join(':')
end

# Use string methods to reverse the words arrangement in a sentence.Eg: 
# "An apple a day keeps the doctor away" -> "away doctor the keeps day a apple An"

#Question 12
puts "\n#Question 12"
get_case_count("Titobi is not at home and he's 10 too.")

#Question 13
puts "\n#Question 13"
factorial(6)

#QUESTION 14
puts "\n#QUESTION 14"
reverse_sentence("Titobi is not at home and he's 10 too")

# step_test

#Question 15
puts "\n#Question 15"
get_primes(23) 

#Question 16
puts "\n#Question 16"
search_text("Titobi is not at home and he's 10 too", "t")

#Question 17
puts "\n#Question 17"
#("1:45:34", "0:15:58")
sum_time("11:23:07","22:53:45")