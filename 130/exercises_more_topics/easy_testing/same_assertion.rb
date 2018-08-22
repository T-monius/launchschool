# same_assertion.rb

require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use!

class SameObjectAssertion < Minitest::Test
  def test_same_object
    assert_same(list, list.process)
  end
end
