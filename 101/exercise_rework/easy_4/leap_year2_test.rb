# leap_year2_test.rb

require "minitest/autorun"

require_relative 'leap_year2'

class JulianGregorianLeapYears < Minitest::Test
  def test_2016
    assert(leap_year?(2016))
  end

  def test_2015
    refute(leap_year?(2015))
  end

  def test_2100
    refute(leap_year?(2100))
  end

  def test_2400
    assert(leap_year?(2400))
  end

  def test_24000
    assert(leap_year?(240000))
  end

  def test_240001
    refute(leap_year?(240001))
  end

  def test_2000
    assert(leap_year?(2000))
  end

  def test_1900
    refute(leap_year?(1900))
  end

  def test_1752
    assert(leap_year?(1752))
  end

  def test_1700
    assert(leap_year?(1700))
  end

  def test_1
    refute(leap_year?(1))
  end

  def test_100
    assert(leap_year?(100))
  end

  def test_400
    assert(leap_year?(400))
  end
end
