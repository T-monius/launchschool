# daily_double_test.rb

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require_relative 'daily_double'

class DailyDoubleTest < Minitest::Test
  def test_two_words_with_duplicate_characters
    # skip
    assert_equal('daily double', crunch('ddaaiillyy ddoouubbllee'))
  end

  def test_a_single_word_with_duplicate_characters
    # skip
    assert_equal('4abcabcba', crunch('4444abcabccba'))
  end

  def test_matching_initial_and_final_letters
    # skip
    assert_equal('hi pah', crunch('hhhii pppaah'))
  end

  def test_a_repeating_letter
    # skip
    assert_equal('g', crunch('ggggggggggggggg'))
  end

  def test_one_letter
    # skip
    assert_equal('a', crunch('a'))
  end

  def test_an_empty_string
    assert_equal('', crunch(''))
  end
end
