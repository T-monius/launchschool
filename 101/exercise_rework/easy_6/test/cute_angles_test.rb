# cute_angles_test.rb

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!
require_relative '../cute_angles'

def range_within_a_second(scnds, test_scnds)
  scnds = scnds.to_i
  test_scnds = test_scnds.to_i
  rng = (test_scnds - 1..test_scnds + 1)
  rng.cover?(scnds)
end

class CuteAngles < Minitest::Test
  def test_thirty_degrees
    test_str = %(30°00'00")
    test_degrees_and_minutes, test_seconds = test_str.split("'")
    actual_str = dms(30)
    degrees_and_minutes, seconds = actual_str.split("'")
    assert_equal(test_degrees_and_minutes, degrees_and_minutes)
    assert(range_within_a_second(seconds, test_seconds))
  end

  def test_degrees_minutes_and_seconds
    test_str = %(76°43'48")
    test_degrees_and_minutes, test_seconds = test_str.split("'")
    actual_str = dms(76.73)
    degrees_and_minutes, seconds = actual_str.split("'")
    assert_equal(test_degrees_and_minutes, degrees_and_minutes)
    assert(range_within_a_second(seconds, test_seconds))
  end
end

