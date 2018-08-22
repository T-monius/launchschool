# equality_assertions.rb

require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use!

# Understanding:
# - Assertion
#   + An actual verification step
#   + The exercise is more concerned with the actual assertion
#     step than the setting up of the test suite
#     > I will set up another instead of copying in order to
#       get more practice in doing so.
#   + `assert_equal`has an expectation and an actual value
#     > Expectation 'xyz'
#     > Act value.downcase

class EqualityAssertion < Minitest::Test
  def setup
    @value = 'XYZ'
  end

  def test_downcase
    assert_equal('xyz', @value.downcase)
  end
end
