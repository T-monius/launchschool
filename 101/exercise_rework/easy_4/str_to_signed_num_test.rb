# str_to_signed_num_test.rb

require 'minitest/autorun'
require_relative 'str_to_signed_num'

class StrToSignedNum < Minitest::Test
  def test_4321
    assert_equal(4321, string_to_signed_integer('4321'))
  end

  def test_negative570
    assert_equal(-570, string_to_signed_integer('-570'))
  end

  def test_positive100
    assert_equal(100, string_to_signed_integer('+100'))
  end
end
