# test_register.rb

require 'minitest/autorun'
require 'minitest/reporters'
require_relative 'cash_register.rb'
require_relative 'transaction.rb'
MiniTest::Reporters.use!

class RegisterTest < Minitest::Test
  def setup
    @register = CashRegister.new(100.00)
    @transaction = Transaction.new(10.00)
  end

  def test_accept_money
    @transaction.amount_paid = 10.00
    assert_equal(110.00, @register.accept_money(@transaction))
  end

  def test_change
    @transaction.amount_paid = 12.00

    assert_equal(2, @register.change(@transaction))
  end

  def test_give_receipt
    @transaction.amount_paid = 10.00
    receipt = "You've paid $#{@transaction.amount_paid}.\n"
    assert_equal(10, @transaction.item_cost)
    assert_output(receipt) { @register.give_receipt(@transaction) }
  end

  def test_prompt_payment
    assert_equal(0, @transaction.amount_paid)
    @transaction.prompt_for_payment
    assert_equal(10, @transaction.amount_paid)
  end
end
