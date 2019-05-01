## counting_up_test.rb

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!
require_relative '../counting_up'

class CountingUp < Minitest::Test
  def test_five
    assert_equal([1, 2, 3, 4, 5], sequence(5))
  end

  def test_three
    assert_equal([1, 2, 3], sequence(3))
  end

  def test_one
    assert_equal([1], sequence(1))
  end

  def test_negative_one
    assert_equal([-1], sequence(-1))
  end
end
