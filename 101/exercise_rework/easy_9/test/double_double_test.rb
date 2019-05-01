# double_double_test.rb

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!
require_relative '../double_double'

class DoubleDoubleTest < Minitest::Test
  def test_37
    assert_equal(74, twice(37))
  end

  def test_44
    assert_equal(44, twice(44))
  end

  def test_334433
    assert_equal(668866, twice(334433))
  end

  def test_444
    assert_equal(888, twice(444))
  end

  def test_107
    assert_equal(214, twice(107))
  end

  def test_103103
    assert_equal(103103, twice(103103))
  end

  def test_3333
    assert_equal(3333, twice(3333))
  end

  def test_7676
    assert_equal(7676, twice(7676))
  end

  def test_123456789123456789
    assert_equal(123456789123456789, twice(123_456_789_123_456_789))
  end

  def test_5
    assert_equal(10, twice(5))
  end
end