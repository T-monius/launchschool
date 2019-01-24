# staggered_caps_two_test.rb

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!
require_relative '../staggered_caps_two'

class StaggeredCapsTwoTest < Minitest::Test
  def test_love_ls
    assert_equal('I lOvE lAuNcH sChOoL!',
                 staggered_case('I Love Launch School!'))
  end

  def test_all_caps
    assert_equal('AlL cApS', staggered_case('ALL CAPS'))
  end

  def test_ignore_numbers
    assert_equal('IgNoRe 77 ThE 444 nUmBeRs',
                 staggered_case('ignore 77 the 444 numbers'))
  end
end
