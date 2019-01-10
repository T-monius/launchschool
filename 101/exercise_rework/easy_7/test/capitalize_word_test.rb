# capitalize_word_test.rb

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!
require_relative '../capitalize_word'

class CapitalizeWordTest < Minitest::Test
  def test_four_score
    assert_equal('Four Score And Seven', word_cap('four score and seven'))
  end

  def test_js_language
    assert_equal('The Javascript Language', word_cap('the javaScript language'))
  end

  def test_quoted
    assert_equal('This Is A "quoted" Word', word_cap('this is a "quoted" word'))
  end
end
