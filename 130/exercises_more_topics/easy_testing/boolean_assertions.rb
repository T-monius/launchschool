# boolean_assertions.rb

require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use!
# Understanding:
# - Minitest assertion
#   + Part of a test
#   + Should I write a teste suite in a file as well tests?
# - Input
#   + Can call the `assert_equal` with an expectation that
#     `true` is the result of `value.odd?`
# - Output
#   + Pass when the test is run 

# Approach:
# Write this file into a test file
# Set up the test environment
#   - Set a variable to an odd integer
# Write a test to call the `value` instance variable
# 

class BooleanAssertions < Minitest::Test
  def setup
    @value = 9
  end

  def test_value
    assert_equal(true, @value.odd?)
  end

  def test_ls_value
    assert @value.odd?, 'value is not odd'
  end
end

# Discussion
# `assert` tests whether its first argument is truthy (that is,
# it is neither false nor nil). If the first argument is not
# truthy, the test fails, and the second argument is displayed
# as the failure message.

# Most (but not all) of the minitest assertions let you specify
# a failure message as the final argument. This is frequently
# omitted since the error messages provided by default are
# usually sufficient. However, the default message for assert
# lacks context, so it is common to specify the failure message
# when using assert.
