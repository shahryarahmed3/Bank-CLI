# tests/test_authenticate_user.rb

require 'minitest/autorun'
require './bank.rb'
require './bankaccount.rb'

class TestFindAcct < Minitest::Test
  # test_find_acct will check if nil is returned as a bank account when an 
  # invalid pin is entered.
  def test_find_acct

    sample_bank = Bank.new
    sample_user_acct = BankAccount.new("John Smith", 500, sample_bank, "1234")
    sample_bank.register_new_acct(1001, sample_user_acct)

    assert_nil sample_bank.find_acct(1001, "1111"), "Find account method failed"
  end

  # test_deposit will check if the balance has updated correctly after a deposit
  # transaction.
  def test_deposit
    sample_bank = Bank.new
    sample_user_acct = BankAccount.new("John Smith", 500, sample_bank, "1234")
    sample_bank.register_new_acct(1001, sample_user_acct)

    # after initialization, John Smith should have an account balance of $500
    
    sample_user_acct.deposit(100) # deposit of $100

    assert_equal 600, sample_user_acct.get_balance, "Deposit method failed"
  end
end
