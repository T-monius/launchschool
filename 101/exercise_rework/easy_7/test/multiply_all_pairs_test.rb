# multiply_all_pairs_test.rb

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!
require_relative '../multiply_all_pairs'

class MultiplyAllPairs < Minitest::Test
  def test_two_and_four_element_arrays
    assert_equal([2, 4, 4, 6, 8, 8, 12, 16],
                 multiply_all_pairs([2, 4], [4, 3, 1, 2]))
  end
end
