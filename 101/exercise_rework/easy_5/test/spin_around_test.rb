# spin_around_test.rb

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!
require_relative '../spin_around'

class SpinAroundTest < Minitest::Test
  def test_two_word_string
    assert_equal("olleh dlrow", spin_me("hello world"))
  end

  def test_different_object
    str = 'hello world'
    str_id = str.object_id

    refute_equal(str_id, spin_me(str))
  end
end
