#QUESTION 5
def Customer
	def initialize(name, account_no) #initialization
		@name = name
		@account_no = account_no + 1
		balance = 1000
	end

	def deposit(amount)
		@balance = @balance + amount
	end

	def withdraw(amount)
		if @balance > amount
			puts "Transaction proessing.." 
			@balance = @balance - amount
		else
			puts "Insufficient funds"
		end		
	end

end



#QUESTION 6
class Vehicle
	def initialize(name, price)
		@name = name
		@price = price
	end

	def show_content
		puts "\n#{self.class} Details \nName: #{@name} \nPrice: #{@price}\nDealer: #{@dealer}"
	end

	def change_price(new_price)
		@price  = new_price
	end

end


class Bike < Vehicle
	def initialize(name, price, dealer)
		@name = name
		@price = Float(price)
		@dealer = dealer
	end

	
end


#Question 6
motorbike = Bike.new("Harley Davidson", "100000", "Dealdey Limited") #creates a new bike object

motorbike.show_content #showmotorbikes the bike's initial details

motorbike.change_price(3700) #change its price

motorbike.show_content #showmotorbikes the bike's updated details






#QUESTION7
class MySentence
	def initialize(sentence)
		@sentence = sentence
	end

	def to_s
		 altered = @sentence.split(" ").each { |word| word = word.swapcase! }.join(" ")
	end
end

#Question 7
# test = MySentence.new("Anosike Osifo is a developer")
# puts test.to_s





#QUESTION 8 & 9
class Array
	#uqestion 8
	def power(x)
		self.map { |element| element ** x }
	end

	#question 9
	def hashify
		holder = Hash.new(0)
		for item in self
			key = "#{item}".length
			if holder.has_key?(key)
				holder[key] << item
			else
				holder[key] = [item]
			end
		end

		puts holder.inspect
	end

	#question 10
	def do_grouping
		holder = { "odd" => [], "even" => [] }

		self.inject(holder) do |final, elem|
			eLength = "#{elem}".length
			# puts "length: #{eLength}, element: #{elem}, Type: #{elem.class}"
			if eLength % 2 == 0
				holder["even"] << elem
			else
				holder["odd"] << elem
			end
		end
		puts holder
	end
end

#Question 8
arr = Array[10, 3, 4, 6]
puts "#{arr.power(2)}"


#Question 9
arr2 = ["tobi", 15, "age", 3, "footballer", "footballee", "Josh"]
arr2.hashify


#QUESTION 10
arr3= [15, "age", 3, "footballer", "footballee", "Josh"]
arr3.do_grouping



#QUESTION 11

def pas_triangle
	
end







