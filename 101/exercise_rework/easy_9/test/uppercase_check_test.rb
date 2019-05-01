# uppdercase_check_test.rb

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!
require_relative '../uppercase_check'

class UppercaseCheck < Minitest::Test
  def test_t
    assert_equal(false, uppercase?('t'))
  end

  def test_big_t
    assert_equal(true, uppercase?('T'))
  end

  def test_four_score
    assert_equal(false, uppercase?('Four Score'))
  end

  def test_big_four_score
    assert_equal(true, uppercase?('FOUR SCORE'))
  end

  def test_non_space_and_alpha
    assert_equal(true, uppercase?('4SCORE!'))
  end

  def test_empty_string
    assert_equal(true, uppercase?(''))
  end
end
