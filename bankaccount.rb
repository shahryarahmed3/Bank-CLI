class Bank
  attr_accessor :num_accts, :bank_name
  def initialize ()
    self.num_accts = get_new_acct_num
    @bank_name = "ABC Bank"
    @accounts = {}
  end

  def get_new_acct_num =(value)
    return self.num_accts + 1
  end

  def register_new_acct(account_number, bank_acct)
    @accounts[account_number] = bank_acct
  end
end

class BankAccount < Bank
  attr_accessor :account_holder, :account_number, :routing_number, :balance
  @num_accts = 100

  def initialize (account_holder, initial_balance, bank)
    @account_holder = account_holder
    @account_number = bank.get_new_acct_num
    @balance = initial_balance
  end

  def get_account_holder_name
    return self.account_holder
  end

  def get_balance
    return self.balance
  end

  def get_account_number
    return self.account_number
  end

  def deposit (account_number, amount)
    self.balance = self.balance + amount;
  end
  def withdraw (account_number, amount)
    self.balance = self.balance - amount;
  end
end

print "\n\nWelcome to ABC Bank!"

bank1 = Bank.new


while true
  puts "\n\n  1. Open a new account"
  puts "  2. Deposit"
  puts "  3. Withdraw"
  puts "  4. Balance"
  puts "  5. Exit"
  print "\nPlease select an option ==> "

  choice = gets.chomp.downcase

  case choice
    when "1", "new_acct"
      puts "\n====================== ABC Bank ========================"
      puts "\nTo open a new bank account, please provide the following..."
      print "\nFirst Name: "
        first_name = gets.chomp.downcase
      print "Last Name: "
        last_name = gets.chomp.downcase
      print "How much do you want to deposit? "
        initial_dep = gets.chomp.to_i

      name = "#{first_name} #{last_name}"
      my_acct = BankAccount.new(name, initial_dep, bank1)
 
    
      puts "\nHere's a summary of your new account credentials..."
      puts "\n  Account Holder: #{my_acct.get_account_holder_name}"
      puts "  Account Number: #{my_acct.get_new_acct_num}"
      puts "  Initial Deposit: $#{my_acct.get_balance}"
      puts "\n================== End of Transaction ===================="
      bank1.register_new_acct(my_acct.get_account_number, my_acct)

    when "2", "deposit"
      puts "\n====================== ABC Bank ========================"
      puts "\nTo make a deposit, please provide the following..."
      print "\n  Account Number: "
        account_num = gets.chomp.to_i
      print "\n  How much would you like to deposit? "
        deposit_amt = gets.chomp.to_i

      my_acct.deposit(account_num, deposit_amt)

      puts "\nHere's a summary of your new account credentials..."
      puts "\n  Account Holder: #{my_acct.get_account_holder_name}"
      puts "  Account Number: #{my_acct.get_account_number}"
      puts "  Deposit Amount: #{deposit_amt}"
      puts "  Account Balance: $#{my_acct.get_balance}"
      puts "\n================== End of Transaction ===================="

    when "3", "withdraw"
      puts "\n====================== ABC Bank ========================"
      puts "\nTo withdraw money, please provide the following..."
      print "\n  Account Number: "
        account_num = gets.chomp.to_i
      print "\n  How much would you like to withdraw? "
        withdraw_amt = gets.chomp.to_i
      print "\n  4-digit Pin: "
        pin = gets.chomp.to_i
      
      my_acct.withdraw(account_num, withdraw_amt)

      puts "\nHere's a summary of your new account credentials..."
      puts "\n  Account Holder: #{my_acct.get_account_holder_name}"
      puts "  Account Number: #{my_acct.get_account_number}"
      puts "  Withdraw Amount: #{withdraw_amt}"
      puts "  Account Balance: $#{my_acct.get_balance}"
      puts "\n================== End of Transaction ===================="
      break
    when "4", "balance"
      puts "\n====================== ABC Bank ========================"
      puts "\nFor the account balance, please provide the following..."
      print "\n  Account Number: "
        account_num = gets.chomp.to_i
      print "\n  4-digit Pin: "
        pin = gets.chomp.to_i

      puts "\nHere's a summary of your new account credentials..."
      puts "\n  Account Holder: #{my_acct.get_account_holder_name}"
      puts "  Account Number: #{my_acct.get_account_number}"
      puts "  Account Balance: $#{my_acct.get_balance}"
      puts "\n================== End of Transaction ===================="
    when "5", "exit"
      puts "Thank you for choosing ABC Bank"
      break
    else
      puts "Invalid choice... Please try again"
  end
end
