# two_lists_test.rb

require 'minitest/autorun'
require 'minitest/reporters'
require_relative '../two_lists'
Minitest::Reporters.use!

class TwoListsTest < Minitest::Test
  def test_numbers_and_letters
    assert_equal([1, 'a', 2, 'b', 3, 'c'], interleave([1, 2, 3], ['a', 'b', 'c']))
  end
end
