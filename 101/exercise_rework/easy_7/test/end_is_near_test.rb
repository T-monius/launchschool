# end_is_near_test.rb

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!
require_relative '../end_is_near'

class EndIsNearTest < Minitest::Test
  def test_two_word_sentence
    assert_equal('last', penultimate('last word'))
  end

  def test_four_word_sentence
    assert_equal('is', penultimate('Launch School is great!'))
  end
end
