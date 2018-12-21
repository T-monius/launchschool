# reversed_array_test.rb

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!
require_relative '../reversed_array2'

class ReversedArray2Test < Minitest::Test
  def test_integer_array
    assert_equal([4, 3, 2, 1], my_reverse([1, 2, 3, 4]))
  end

  def test_character_array
    assert_equal(%w(e d c b a), my_reverse(%w(a b c d e)))
  end

  def test_single_string_element
    assert_equal(['abc'], my_reverse(['abc']))
  end

  def test_empty_array
    assert_equal([], my_reverse([]))
  end

  def test_different_object_ids
    arr = [1, 2, 3]
    new_arr = my_reverse(arr)
    arr_id = arr.object_id
    new_arr_id = new_arr.object_id
    refute_equal(new_arr_id, arr_id)
    assert_equal([1, 2, 3], arr)
    assert_equal([3, 2, 1], new_arr)
  end
end
