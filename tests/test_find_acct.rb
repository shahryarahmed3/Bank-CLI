# tests/test_authenticate_user.rb

require 'minitest/autorun'
require './bank.rb'
require './bankaccount.rb'

class TestFindAcct < Minitest::Test
  def test_find_acct
    sample_bank = Bank.new
    sample_user_acct = BankAccount.new("John Smith", 500, sample_bank, "1234")
    sample_bank.register_new_acct(1001, sample_user_acct)

    assert_equal true, sample_bank.find_acct(1001, "1234"), "Find account method failed"
  end
end
