# included_test.rb

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!
require_relative '../included'

class IncludedTest < Minitest::Test
  def test_three
    assert include?([1,2,3,4,5], 3)
  end

  def test_six
    refute include?([1,2,3,4,5], 6)
  end

  def test_empty_array_with_search_value
    refute include?([], 3)
  end

  def test_nil_array_and_nil
    assert include?([nil], nil)
  end

  def test_empty_array_and_nil
    refute include?([], nil)
  end
end
