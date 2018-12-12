# alphabetical_numbers_test.rb

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!
require_relative 'alphabetical_numbers'

class AlphabeticalNumbersTest < Minitest::Test
  def test_array_of_integers
    assert_equal([8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17, 6,
                  16, 10, 13, 3, 12, 2, 0],
                  alphabetic_number_sort((0..19).to_a))
  end
end
