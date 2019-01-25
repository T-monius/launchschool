# multiplicative_average_test.rb

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!
require_relative '../multiplicative_average'

class MultiplicativeAverageTest < Minitest::Test
  def test_three_and_five
    assert_equal('The result is 7.500', show_multiplicative_average([3, 5]))
  end

  def test_six
    assert_equal('The result is 6.000', show_multiplicative_average([6]))
  end

  def test_six_element_array
    assert_equal('The result is 28361.667',
                 show_multiplicative_average([2, 5, 7, 11, 13, 17]))
  end
end
