# all_substrings_test.rb

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!
require_relative '../all_substrings.rb'

class AllSubstringsTest < Minitest::Test
  def test_a_to_e
    assert_equal(['a', 'ab', 'abc', 'abcd', 'abcde',
                  'b', 'bc', 'bcd', 'bcde',
                  'c', 'cd', 'cde',
                  'd', 'de',
                  'e'], substrings('abcde'))
  end
end
