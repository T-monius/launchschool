# type_assertions.rb

require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use!

class TypeAssertion < Minitest::Test
  def test_type_assertion
    assert_instance_of(Numeric, value)
  end
end
