# after_midnight_test.rb

require 'minitest/autorun'
require_relative '../after_midnight'
require 'minitest/reporters'
Minitest::Reporters.use!

class AfterMidnightTest < Minitest::Test
  def test_0
    assert_equal('00:00', time_of_day(0))
  end

  def test_negative_number
    assert_equal("23:57", time_of_day(-3))
  end

  def test_just_minutes
    assert_equal("00:35", time_of_day(35))
  end

  def test_before_midnight
    assert_equal('00:03', time_of_day(-1437))
  end

  def test_more_minutes_than_in_a_day
    assert_equal('02:00', time_of_day(3000))
  end

  def test_hours_and_minutes_after_midnight
    assert_equal('13:20', time_of_day(800))
  end

  def test_days_before_midnight
    assert_equal("01:29", time_of_day(-4231))
  end
end 
