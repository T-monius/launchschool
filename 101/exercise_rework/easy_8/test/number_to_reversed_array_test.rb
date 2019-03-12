# number_to_reversed_array_test.rb

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!
require_relative '../number_to_reversed_array.rb'

class NumberToReversedArrayTest < Minitest::Test
  def test_one_to_5
    assert_equal(54321, reversed_number(12345))
  end

  def test_5_digit_number
    assert_equal(31221, reversed_number(12213))
  end

  def test_3_digit_number
    assert_equal(654, reversed_number(456))
  end

  def test_no_leading_zeros
    assert_equal(21, reversed_number(12000))
  end

  def test_12003
    assert_equal(30021, reversed_number(12003))
  end

  def test_one
    assert_equal(1, reversed_number(1))
  end
end
