require "./bank"

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
