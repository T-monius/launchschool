# name_swapping_test.rb

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!
require_relative '../name_swapping'

class NameSwapping < Minitest::Test
  def test_full_name
    assert_equal('Roberts, Joe', swap_name('Joe Roberts'))
  end
end
