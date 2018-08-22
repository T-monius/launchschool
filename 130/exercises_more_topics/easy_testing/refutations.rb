# refutations.rb

require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use!

class Refutations < Minitest::Test
  def test_refutation
    refute_includes(list, 'xyz')
  end
end
