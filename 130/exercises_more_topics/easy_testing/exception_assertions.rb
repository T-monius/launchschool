# exception_assertions.rb

require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use!

require_relative 'exception_setup.rb'

class ExceptionAssertions < Minitest::Test
  def setup
    @employee = Employee.new
  end

  def test_exception_assertion
    assert_raises(NoExperienceError) { @employee.hire }
  end
end
