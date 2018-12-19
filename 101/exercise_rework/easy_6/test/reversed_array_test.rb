# reversed_array_test.rb

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!
require_relative '../reversed_array.rb'

class ReverseArrayTest < Minitest::Test
  def test_number_list
    list = [1, 2, 3, 4]
    id_of_number_list = list.object_id

    assert_equal(id_of_number_list, my_reverse!(list).object_id)
    assert_equal(list.reverse!, my_reverse!(list))
  end
end