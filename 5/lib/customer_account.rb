#QUESTION 5
module CustomerAccount
  class Customer
    def initialize(name, account_no) #initialization
      @name = name
      @account_no = Integer(account_no) + 1
      @balance = 1000
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

    def account_info
      puts "Account Details:\nName: #{@name}\nAccount Number: #{@account_no}\nBalance: #{@balance}"
    end
  end
end