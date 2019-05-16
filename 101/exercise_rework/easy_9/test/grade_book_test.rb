# grade_book_test.rb

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!
require_relative '../grade_book'

class GradeBook < Minitest::Test
  def test_a
    assert_equal("A", get_grade(95, 90, 93))
  end

  def test_d
    assert_equal('D', get_grade(50, 50, 95))
  end
end
