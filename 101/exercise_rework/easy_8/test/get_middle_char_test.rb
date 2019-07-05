# get_middle_char_test.rb

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!
require_relative '../get_middles_char'

class GetMiddleChar < Minitest::Test
  def test_love_ruby
    assert_equal('e', center_of('I love ruby'))
  end

  def test_ls
    assert_equal(' ', center_of('Launch School'))
  end

  def test_launch
    assert_equal('un', center_of('Launch'))
  end

  def test_ls_one_word
    assert_equal('hs', center_of('Launchschool'))
  end

  def test_x
    assert_equal('x', center_of('x'))
  end
end
