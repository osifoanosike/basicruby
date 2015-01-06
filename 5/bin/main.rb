require_relative '../lib/customer_account.rb'

custAcct = Customer.new("Osifo")
custAcct.account_info

puts "\nSelect an operation to perform\nWithdrawal: 1\nDeposit: 2\nInquiry: 3\nNew Account: 4 \nor Press Q to quit."
option = gets.chomp

abort("exiting...") if option.match(/q/i)

case Integer(option)
when 1
  begin
    puts "select and amount to withdraw"
    withdrawAmt = Integer(gets.chomp)
  rescue ArgumentError
    puts "Invalid amount specified, Please enter a number"
  else
    puts "processing"
    custAcct.withdraw(withdrawAmt)
    puts "Withdrawal completed"
    custAcct.account_info
  end
when 2
  puts "select and amount to deposit"
  begin
    depositAmt = Integer(gets.chomp)
    
  rescue ArgumentError
    puts "Invalid amount specified, Please enter a number"
  else
    puts "processing"
    custAcct.deposit(depositAmt)
    puts "Withdrawal completed"
    custAcct.account_info
  end

  
when 3
  custAcct.account_info
when 4
  acct = custAcct.new_account
  puts "Your newly created account number is: #{acct.to_s.rjust(10,'0')}"
else
  puts "Looks like you've selected an invalid option. Please try again"
end





