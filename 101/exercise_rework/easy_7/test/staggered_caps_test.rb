# staggered_caps_test.rb

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!
require_relative '../staggered_caps'

class StaggeredCapsTest < Minitest::Test
  def test_love_ls
    assert_equal('I LoVe lAuNcH ScHoOl!', staggered_case('I Love Launch School!'))
  end

  def test_all_caps
    assert_equal('AlL_CaPs', staggered_case('ALL_CAPS'))
  end

  def test_ignore_numbers
    assert_equal('IgNoRe 77 ThE 444 NuMbErS', staggered_case('ignore 77 the 444 numbers'))
  end
end
