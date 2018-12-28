# halvsies_test.rb

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!
require_relative '../halvsies'

class HalvsiesTest < Minitest::Test
  def test_four_element_array
    assert_equal([[1, 2], [3, 4]], halvsies([1, 2, 3, 4]))
  end

  def test_five_element_array
    assert_equal([[1, 5, 2], [4, 3]], halvsies([1, 5, 2, 4, 3]))
  end

  def test_1_element_array
    assert_equal([[5], []], halvsies([5]))
  end

  def test_empty_array
    assert_equal([[], []], halvsies([]))
  end
end