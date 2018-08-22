# kind_assertions.rb

require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use!

class KindAssertions < Minitest::Test
  def test_kind_assertions
    assert_kind_of(Numeric, value)
  end
end
