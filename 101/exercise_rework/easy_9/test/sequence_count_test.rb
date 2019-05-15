# sequence_count_test.rb

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!
require_relative '../sequence_count'

class SequenceCount < Minitest::Test
  def test_five_one
    assert_equal([1, 2, 3, 4, 5], sequence(5, 1))
  end

  def test_four_neg_seven
    assert_equal([-7, -14, -21, -28], sequence(4, -7))
  end

  def test_three_zero
    assert_equal([0, 0, 0], sequence(3, 0))
  end

  def test_zero_hundred_thousand
    assert_equal([], sequence(0, 1000000))
  end
end
