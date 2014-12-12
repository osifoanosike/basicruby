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

	def show_details

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

	def show_content
		puts "Bike Details \nName: #{@name} \nPrice : #{@price}\nDealer: #{@dealer}"
	end
end


#Question 6
# motorbike = Bike.new("Harley Davidson", "100000", "Dealdey Limited") #creates a new bike object

# motorbike.show_content #showmotorbikes the bike's initial details

# motorbike.change_price(3700) #change its price

# motorbike.show_content #showmotorbikes the bike's updated details



#QUESTION7

class MySentence
	def initialize(sentence)
		@sentence = sentence
	end

	def to_s
		 altered = @sentence.split(" ").each { |word| word = word.swapcase! }.join(" ")
	end
end

test = MySentence.new("Anosike Osifo is a developer")
puts test.to_s