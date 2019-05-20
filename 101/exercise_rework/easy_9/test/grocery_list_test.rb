# grocery_list_test.rb

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!
require_relative '../grocery_list.rb'

class GroceryList < Minitest::Test
  def test_apples_orange_bananas
    assert_equal(["apples", "apples", "apples", "orange", "bananas","bananas"],
                  buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]))
  end
end
