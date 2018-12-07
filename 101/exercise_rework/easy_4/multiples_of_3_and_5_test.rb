# multiples_of_3_and_5_test.rb

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!
require_relative 'multiples_of_3_and_5'

class MultiplesOf3And5Test < Minitest::Test
  def test_3
    assert_equal(3, multisum(3))
  end

  def test_5
    assert_equal(8, multisum(5))
  end

  def test_10
    assert_equal(33, multisum(10))
  end

  def test_1000
    assert_equal(234168, multisum(1000))
  end
end
