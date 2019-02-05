# leading_substrings_test.rb

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!
require_relative '../leading_substrings.rb'

class LeadingSubstringsTest < Minitest::Test
  def test_three_letters
    assert_equal(['a', 'ab', 'abc'], substrings_at_start('abc'))
  end

  def test_a_single_character
    assert_equal(['a'], substrings_at_start('a'))
  end

  def test_five_characters
    assert_equal(['x', 'xy', 'xyz', 'xyzz', 'xyzzy'],
                 substrings_at_start('xyzzy'))
  end
end
