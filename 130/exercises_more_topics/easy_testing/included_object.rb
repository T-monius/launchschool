# included_object.rb

require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use!

class IncludedObject < Minitest::Test
  def test_include_object
    list = ['jeb', 'xyz']
    assert_includes(list, 'xyz')
  end
end
