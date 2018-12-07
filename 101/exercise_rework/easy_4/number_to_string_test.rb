# number_to_string_test.rb

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!
require_relative 'number_to_string'

class NumberToString < Minitest::Test
  def test_4321
    assert_equal('4321', integer_to_string(4321))
  end

  def test_0
    assert_equal('0', integer_to_string(0))
  end

  def test_5000
    assert_equal('5000', integer_to_string(5000))
  end
end
