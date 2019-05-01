# always_return_negative_test.rb

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!
require_relative '../always_return_negative'

class AlwaysReturnNegative < Minitest::Test
  def test_five
    assert_equal(-5, negative(5))
  end

  def test_neg_three
    assert_equal(-3, negative(-3))
  end

  def test_zero
    assert_equal(0, negative(0))
  end
end
