# letter_counter_test.rb

require 'minitest/autorun'
require 'minitest/reporters'
require_relative '../letter_counter'
Minitest::Reporters.use!

class LetterCounterTest < Minitest::Test
  def test_four_word_sentence
    assert_equal({ 3 => 1, 4 => 1, 5 => 1, 6 => 1 },
                 word_sizes('Four score and seven.'))
  end

  def test_8_word_sentence
    assert_equal({ 3 => 5, 6 => 1, 7 => 2 },
                 word_sizes('Hey diddle diddle, the cat and the fiddle!'))
  end

  def test_three_word_sentence
    assert_equal({ 6 => 1, 2 => 1, 4 => 1 }, word_sizes("What's up doc?"))
  end

  def test_empty_string
    assert_equal({}, word_sizes(''))
  end
end
