#QUESTION 17
module SumTime
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
		puts "sum of the follow time values: #{time1} and #{time2} results in: \n#{sum.join(':')}"
	end
end