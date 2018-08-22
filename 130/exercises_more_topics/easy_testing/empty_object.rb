# empty_object.rb

require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use!

class EmptyObject < Minitest::Test
  def test_empty_object
    list = []
    assert_equal(true, list.empty?)
  end

  def test_ls_empty_object
    list = []
    assert_empty list
  end
end
