# letter_swap_test.rb

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!
require_relative 'letter_swap'

class SwapTest < Minitest::Test
  def test_abcde
    assert_equal('ebcdA', swap('Abcde'))
  end

  def test_phrase
    assert_equal('hO thaw a londerfuw yad ti si',
                 swap('Oh what a wonderful day it is'))
  end

  def test_a
    assert_equal('a', swap('a'))
  end
end
