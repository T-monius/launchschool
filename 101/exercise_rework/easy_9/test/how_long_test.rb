# how_long_test.rb

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!
require_relative '../how_long'

class HowLongAreYou < Minitest::Test
  def test_three_words
    assert_equal(["cow 3", "sheep 5", "chicken 7"],
                 word_lengths("cow sheep chicken"))
  end

  def test_six_words
    assert_equal(["baseball 8", "hot 3", "dogs 4",
                  "and 3", "apple 5", "pie 3"],
                  word_lengths("baseball hot dogs and apple pie"))
  end

  def test_five_words_non_alphas
    assert_equal(["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"],
                 word_lengths("It ain't easy, is it?"))
  end

  def test_super_long_word
    assert_equal(["Supercalifragilisticexpialidocious 34"],
                 word_lengths("Supercalifragilisticexpialidocious"))
  end

  def test_empty_string
    assert_equal([], word_lengths(""))
  end
end
