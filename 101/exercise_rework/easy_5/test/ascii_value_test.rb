# ascii_value_test.rb

require 'minitest/autorun'
require_relative '../ascii_value'

class AsciiValue < Minitest::Test
  def test_four_score
    assert_equal(984, ascii_value('Four score'))
  end

  def test_launch_school
    # skip
    assert_equal(1251, ascii_value('Launch School'))
  end

  def test_a
    # skip
    assert_equal(97, ascii_value('a'))
  end

  def test_empty_string
    # skip
    assert_equal(0, ascii_value(''))
  end
end
