# running_totals_test.rb

require 'minitest/autorun'
require_relative 'running_totals'

class RunningTotalsTest < Minitest::Test
  def test_three_elements
    #skip
    assert_equal([2, 7, 20], running_total([2, 5, 13]))
  end

  def test_five_elements
    # skip
    assert_equal([14, 25, 32, 47, 67], running_total([14, 11, 7, 15, 20]))
  end

  def test_one_element
    # skip
    assert_equal([3], running_total([3]))
  end

  def test_empty
    assert_equal([], running_total([]))
  end
end
