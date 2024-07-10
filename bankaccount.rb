class Bank
  attr_accessor :num_accts, :bank_name
  def initialize ()
    @bank_name = "ABC Bank"
    @num_accts = 1000
    @accounts = {}
  end
  def get_acct(account_number)
    return @accounts[account_number]
  end
  def get_acct_num
    @num_accts += 1
    return self.num_accts
  end
  def register_new_acct(account_number, bank_acct)
    @accounts[account_number] = bank_acct
  end
  def find_acct (account_number, pin)
    acct = self.get_acct(account_number)
    if (pin != acct.pin)
      puts "  Invalid pin."
      return nil
    end
    return acct
  end
end

class BankAccount < Bank
  attr_accessor :account_holder, :account_number, :balance, :pin

  def initialize (account_holder, initial_balance, bank, pin)
    @account_holder = account_holder
    @account_number = bank.get_acct_num
    @balance = initial_balance
    @pin = pin
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

  def deposit (amount)
    self.balance = self.balance + amount;
  end

  def withdraw (amount)
    self.balance = self.balance - amount;
  end

  def get_pin
    return self.pin
  end

  def authenticate_user (pin)
    return self.pin == pin
  end
end

puts "\n\n|||||||||||||||||||||| [ Welcome to ABC Bank! ] ||||||||||||||||||||||||"

bank1 = Bank.new


while true
  puts "\n||||||||||||||||||||||||| [ Transaction Menu ] |||||||||||||||||||||||||"
  puts "\n\n  1. Open a new account"
  puts "  2. Deposit"
  puts "  3. Withdraw"
  puts "  4. Balance"
  puts "  5. Exit"
  print "\nPlease select an option ==> "

  choice = gets.chomp.downcase

  case choice
    when "1", "new_acct"
      puts "\n||||||||||||||||||||||||||| [ New Account ] ||||||||||||||||||||||||||||"
      puts "\nTo open a new bank account, please provide the following..."
      print "\nFirst Name: "
        first_name = gets.chomp.capitalize
      print "Last Name: "
        last_name = gets.chomp.capitalize
      print "Create a new 4-digit PIN: "
        pin = gets.chomp.to_i
      print "How much do you want to deposit? "
        initial_dep = gets.chomp.to_i

      name = "#{first_name} #{last_name}"
      my_acct = BankAccount.new(name, initial_dep, bank1, pin)
      bank1.register_new_acct(my_acct.get_account_number, my_acct)
 
    
      puts "\nHere's a summary of your new account credentials..."
      puts "\n  Account Holder: #{my_acct.get_account_holder_name}"
      puts "  Account Number: #{my_acct.get_account_number}"
      puts "  Initial Deposit: $#{my_acct.get_balance}"
      puts "  Your 4-digit PIN: #{my_acct.get_pin}"
      puts "\n   ================== -[ End of Transaction ]- ===================="

    when "2", "deposit"
      puts "\n||||||||||||||||||||||||||| [ Deposit ] |||||||||||||||||||||||||||||||"
      puts "\nTo make a deposit, please provide the following..."
      print "\n  Account Number: "
        account_num = gets.chomp.to_i
      print "\n  How much would you like to deposit? "
        deposit_amt = gets.chomp.to_i
      print "\n  Enter your 4-digit Pin: "
        pin = gets.chomp.to_i

      my_acct = bank1.find_acct(account_num, pin)
      if my_acct != nil
        my_acct.deposit(deposit_amt)
        puts "\nHere's a summary of your deposit transaction..."
        puts "\n  Account Holder: #{my_acct.get_account_holder_name}"
        puts "  Account Number: #{my_acct.get_account_number}"
        puts "  Deposit Amount: #{deposit_amt}"
        puts "  Account Balance: $#{my_acct.get_balance}"
        puts "\n   ================== -[ End of Transaction ]- ===================="
      else
        puts "\n  Account not found, please try again."
        puts "\n   ================== -[ End of Transaction ]- ===================="
      end

    when "3", "withdraw"
      puts "\n||||||||||||||||||||||||||| [ Withdraw ] |||||||||||||||||||||||||||||||"

      puts "\nTo withdraw money, please provide the following..."
      print "\n  Account Number: "
        account_num = gets.chomp.to_i
      print "\n  How much would you like to withdraw? "
        withdraw_amt = gets.chomp.to_i
      print "\n  Enter your 4-digit Pin: "
        pin = gets.chomp.to_i

      my_acct = bank1.find_acct(account_num, pin)

      if my_acct != nil
        my_acct.withdraw(withdraw_amt)
        puts "\nHere's a summary of your withdrawl transaction..."
        puts "\n  Account Holder: #{my_acct.get_account_holder_name}"
        puts "  Account Number: #{my_acct.get_account_number}"
        puts "  Withdraw Amount: #{withdraw_amt}"
        puts "  Account Balance: $#{my_acct.get_balance}"
        puts "\n   ================== -[ End of Transaction ]- ===================="
      else
        puts "  Account not found, please try again."
        puts "\n   ================== -[ End of Transaction ]- ===================="
      end

    when "4", "balance"
      puts "\n||||||||||||||||||||||||||| [ Balance ] |||||||||||||||||||||||||||||||"

      puts "\nFor the account balance, please provide the following..."
      print "\n  Account Number: "
        account_num = gets.chomp.to_i
      print "\n  Enter your 4-digit Pin: "
        pin = gets.chomp.to_i

        my_acct = bank1.find_acct(account_num, pin)

      if my_acct != nil
        puts "\nYour account balance is..."
        puts "\n  Account Holder: #{my_acct.get_account_holder_name}"
        puts "  Account Number: #{my_acct.get_account_number}"
        puts "  Account Balance: $#{my_acct.get_balance}"
        puts "\n   ================== -[ End of Transaction ]- ===================="
      else
        puts "  Account not found, please try again."
        puts "\n   ================== -[ End of Transaction ]- ===================="
      end
    when "5", "exit"
      puts "\nThank you for choosing ABC Bank!"
      break
    else
      puts "\nInvalid choice... Please try again"
  end
end
