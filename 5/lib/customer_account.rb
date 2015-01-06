require '../../21/lib/bad_argument.rb'

class Customer
  def initialize(name) #initialization
    @name = name
    @account_no = "0012345678"
    @balance = 1000
  end

  def deposit(amount)
    @balance = @balance + amount.to_f
  end

  def withdraw(amount)
    if @balance > amount
      puts "Transaction proessing.." 
      @balance = @balance - amount
    else
      puts "Insufficient funds"
    end   
  end

  def new_account
    @account_no = @account_no.to_i + 1
  end

  def account_info
    puts "Account Details:\nName: #{@name}\nAccount Number: #{@account_no}\nBalance: #{@balance}"
  end
end