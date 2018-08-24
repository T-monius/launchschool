# test_transaction.rb

require 'minitest/autorun'
require 'minitest/reporters'
require_relative 'cash_register.rb'
require_relative 'transaction.rb'
MiniTest::Reporters.use!

class TransactionTest < Minitest::Test
  def setup
    @register = CashRegister.new(100.00)
    @transaction = Transaction.new(10.00)
  end

  def test_prompt_payment
    assert_equal(0, @transaction.amount_paid)
    input = StringIO.new('10.00\n')
    output = StringIO.new
    @transaction.prompt_for_payment(input: input, output: output)
    assert_equal(10, @transaction.amount_paid)
  end
end


