#QUESTION 19
module SumTimeAdv
	def execute(*time_vals)

		time1 = time_vals.shift#here i take out the first element to use as an index for all operations
		puts "first value: #{time1}"
		time_vals.each { |time| puts "time_val: #{time}" }
		
		sum = []
		temp_time = []

		#this loop is done for the nos of vals left in the array after shifting out the 1st val
		#Note: time1 value is updated on each iteration
		time_vals.each do |time_val|
			timeA = time1.split(':').map(&:to_i)
			timeB = time_val.split(':').map(&:to_i)

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

			sum[0] = (timeA[0] + timeB[0])

			sum[0] /= 3600 #convert back to hours
			sum[1] /= 60 #convert back to minutes

			time1 = sum.join(':')
			puts "Time1 val: #{time1}"
		end

		nos_of_days = sum[0].to_i / 24 #group into days
		if nos_of_days > 0 #group into days
			sum[0] = "#{nos_of_days} #{nos_of_days == 1 ? "day": "days"} & #{sum[0] % 24}"
		end

		puts "Some of time results in: \n#{sum.join(':')}"
	end
end