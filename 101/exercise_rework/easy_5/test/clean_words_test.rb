# clean_words_test.rb

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!
require_relative '../clean_words'

class CleanUpTheWordsTest < Minitest::Test
  def test_one_dirty_string
    assert_equal(' what s my line ', cleanup("---what's my +*& line?"))
  end
end
