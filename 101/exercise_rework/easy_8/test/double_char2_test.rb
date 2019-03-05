# double_char2_test.rb

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!
require_relative '../double_char2'

class DoubleChar2Test < Minitest::Test
  def test_all_alphas
    assert_equal("SSttrrinngg", double_consonants('String'))
  end

  def test_string_and_punctuation
    assert_equal("HHellllo-WWorrlldd!", double_consonants("Hello-World!"))
  end

  def test_alpha_numberic_and_punctuation
    assert_equal("JJullyy 4tthh", double_consonants("July 4th"))
  end

  def test_empty_string
    assert_equal("", double_consonants(""))
  end
end