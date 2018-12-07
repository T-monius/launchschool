# signed_num_test.rb

require "minitest/autorun"
require_relative "signed_num_to_str"

class SignedNumToString < Minitest::Test
  def test_positive
    assert_equal('+4321', signed_integer_to_string(4321))
  end

  def test_negative
    assert_equal('-123', signed_integer_to_string(-123))
  end

  def test_zero
    assert_equal('0', signed_integer_to_string(0))
  end
end
