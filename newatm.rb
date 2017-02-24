class Atm
 def initialize(current_cash)
   @current_cash = current_cash
 end
 attr_accessor :current_cash

 def dispense(amount)
   if @current_cash > amount
     puts "Take your money"
     true
   else
     false
   end
 end
end

class Account
 def initialize(balance)
   @balance = balance
 end
 attr_accessor :balance

 def withdraw(atm, amount)
   if @balance > amount
     result = atm.dispense(amount)
     if result == true
       @balance = @balance - amount
       puts "Your new balance is #{@balance}"
     else
       puts "not sufficient funds"
     end
   else
     puts "not sufficient funds"
   end
 end
 def deposit(atm, amount)
   atm.current_cash += amount
   @balance = @balance + amount
   puts "Your new balance is #{@balance}"
 end
end

trent = Account.new(1000)
broadway_atm = Atm.new(10000)


loop do
  puts "============================================================="
puts "\tWelcome to Broadway ATM"
puts "============================================================="
puts "\tWhat would you like to do?\n \n\t1. Withdraw\n\t2. Deposit\n\t3. Check balance\n\t4. Exit"
answer = gets.chomp.to_i
  if answer == 1
    puts "How much would you like to withdraw?"
    withdrawl = gets.chomp.to_i
trent.withdraw(broadway_atm, withdrawl)
  elsif answer == 2
    puts "How much would you like to deposit?"
    deposited = gets.chomp.to_i
trent.deposit(broadway_atm, deposited)
  elsif answer == 3
puts "your balance is #{trent.balance}"
 elsif answer = 4
   exit

end
end
