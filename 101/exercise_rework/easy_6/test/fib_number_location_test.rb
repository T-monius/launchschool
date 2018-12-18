# fib_number_location_test.rb

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!
require_relative '../fib_number_location'

class FibonacciNumberLocationTest < Minitest::Test
  def test_two
    assert_equal(7, find_fibonacci_index_by_length(2))
  end

  def test_three
    assert_equal(12, find_fibonacci_index_by_length(3))
  end

  def test_ten
    assert_equal(45, find_fibonacci_index_by_length(10))
  end

  def test_100
    assert_equal(476, find_fibonacci_index_by_length(100))
  end

  def test_1000
    assert_equal(4782, find_fibonacci_index_by_length(1000))
  end

  def test_10000
    assert_equal(47847, find_fibonacci_index_by_length(10000))
  end
end
