# end_is_near_fe_test.rb

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!
require_relative '../end_is_near_fe'

class EndIsNearFeTest  < Minitest::Test
  def test_empty_string
    assert_equal('', middle_word(''))
  end

  def test_single_word
    assert_equal('word', middle_word('word'))
  end

  def test_even_word_sentence
    assert_equal('four', middle_word('I am four words.'))
  end

  def test_odd_word_sentence
    assert_equal('not', middle_word('I am not four words.'))
  end
end
