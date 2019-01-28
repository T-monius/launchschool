# multiply_lists_test.rb

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!
require_relative '../multiply_lists'

class MultiplyListsTest < Minitest::Test
  def test_three_element_arrays
    assert_equal([27, 50, 77], multiply_list([3, 5, 7], [9, 10, 11]))
  end

  def test_three_element_arrays_alternative_method
    assert_equal([27, 50, 77], multiply_list1([3, 5, 7], [9, 10, 11]))
  end
end
