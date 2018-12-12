# letter_counter2_test.rb

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!
require_relative 'letter_counter2'

class LetterCounter2Test < Minitest::Test
  def test_four_words_one_punctuation
    assert_equal({ 3 => 1, 4 => 1, 5 => 2 },
                 word_sizes('Four score and seven.'))
  end

  def test_eight_words_two_punctuations
    assert_equal({ 3 => 5, 6 => 3 },
                 word_sizes('Hey diddle diddle, the cat and the fiddle!'))
  end

  def test_three_words_two_punctuations
    assert_equal({ 5 => 1, 2 => 1, 3 => 1 },
                 word_sizes("What's up doc?"))
  end

  def test_empty_string
    assert_equal({}, word_sizes(''))
  end
end
