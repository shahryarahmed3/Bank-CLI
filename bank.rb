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
