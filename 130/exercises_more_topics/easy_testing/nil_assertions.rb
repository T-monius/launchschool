# nil_assertions.rb

require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use!

class NilAssertions < Minitest::Test
  def test_nil_assertion
    value = nil
    assert_nil(value)
  end
end
