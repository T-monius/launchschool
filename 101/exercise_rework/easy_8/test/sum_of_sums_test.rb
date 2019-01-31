# sum_of_sums_test.rb

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!
require_relative '../sum_of_sums'

class SumOfSumsTest < Minitest::Test
  def test_three_element_array
    assert_equal(21, sum_of_sums([3, 5, 2]))
  end

  def test_four_element_array
    assert_equal(36, sum_of_sums([1, 5, 7, 3]))
  end

  def test_single_element_array
    assert_equal(4, sum_of_sums([4]))
  end

  def test_five_element_array
    assert_equal(35, sum_of_sums([1, 2, 3, 4, 5]))
  end
end
