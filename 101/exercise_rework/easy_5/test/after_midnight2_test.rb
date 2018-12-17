# after_midnight2_test.rb

require 'minitest/autorun'
require_relative '../after_midnight2'
require 'minitest/reporters'
Minitest::Reporters.use!

class AfterMidnight2Test < Minitest::Test
  def test_zero_after_midnight
    assert_equal(0, after_midnight('00:00'))    
  end

  def test_zero_before_midnight
    assert_equal(0, before_midnight('00:00'))
  end

  def test_noonish_after_midnight
    assert_equal(754, after_midnight('12:34'))
  end

  def test_noonish_before_midnight
    assert_equal(686, before_midnight('12:34'))
  end

  def test_twenty_four_hours_after_midnight
    assert_equal(0, after_midnight('24:00'))
  end

  def test_twenty_four_hours_before_midnight
    assert_equal(0, before_midnight('24:00'))
  end
end
