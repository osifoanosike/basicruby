#QUESTION 5
def Customer
	@name, @account_no, @balance

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
	@name, @price

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
	@dealer

	def initialize
		super.initialize
	end
end


myBike = Bike.new("Harlet davidson", 3000) #creates a new bike object

myBike.change_price(3700) #change its price
