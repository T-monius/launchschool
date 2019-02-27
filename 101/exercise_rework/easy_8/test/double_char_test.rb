# double_char_test.rb

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!
require_relative '../double_char'

class DoubleCharTest < Minitest::Test
  def test_hello
    assert_equal("HHeelllloo", repeater('Hello'))
  end

  def test_two_words_and_special_character
    assert_equal("GGoooodd  jjoobb!!", repeater("Good job!"))
  end

  def test_empty_string
    assert_equal('', repeater(''))
  end
end