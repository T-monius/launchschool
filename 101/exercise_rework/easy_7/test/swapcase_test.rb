# swapcase_test.rb

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!
require_relative '../swap_case'

class SwapCaseTest < Minitest::Test
  def test_camelcase
    assert_equal('cAMELcASE', swapcase('CamelCase'))
  end

  def test_tonight
    assert_equal('tONIGHT ON xyz-tv', swapcase('Tonight on XYZ-TV'))
  end
end