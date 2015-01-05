require_relative '../lib/customer_account.rb'

custAcct = Customer.new("Osifo", "1234567890")
custAcct.account_info

puts "\nSelect an operation to perform\nWithdrawal: 1\nDeposit: 2\nInquiry: 3 or Press Q to quit."
option = gets.chomp

abort("exiting...") if option.match(/q/i)

case Integer(option)
when 1
  puts "select and amount to withdraw"
  withdrawAmt = Integer(gets.chomp)
  puts "processing"
  custAcct - withdrawAmt
  puts "Withdrawal completed"
  custAcct.account_info
when 2
  puts "select and amount to deposit"
  depositAmt = Integer(gets.chomp)
  puts "processing"
  custAcct + depositAmt
  puts "Withdrawal completed"
  custAcct.account_info
when 3
  custAcct.account_info
else
  puts "Looks like you've selected an invalid option. Please try again"
end





