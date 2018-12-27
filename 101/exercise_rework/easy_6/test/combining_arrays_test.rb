# combining_arrays_test.rb

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!
require_relative '../combining_arrays'

class CombiningArraysTest < Minitest::Test
  def test_two_inputs
    assert_equal([1, 3, 5, 6, 9], merge([1, 3, 5], [3, 6, 9]))
  end

  def test_further_exploration
    assert_equal([1, 3, 5, 6, 9], fe_merge([1, 3, 5], [3, 6, 9]))
  end

  def test_further_exploration_with_arrays_of_unequal_length
    assert_equal([1, 3, 5, 6, 7, 9], fe_merge([1, 3, 5, 7], [3, 6, 9]))
  end
end
