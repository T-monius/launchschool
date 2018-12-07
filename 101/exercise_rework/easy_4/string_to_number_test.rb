# string_to_number_test.rb

require 'minitest/autorun'
require_relative 'string_to_number'

class StringToInteger < Minitest::Test
  def test_4321
    assert_equal(4321, string_to_integer('4321'))
  end

  def test_570
    assert_equal(570, string_to_integer('570'))
  end
end
