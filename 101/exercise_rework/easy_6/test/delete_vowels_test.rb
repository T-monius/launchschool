# delete_vowels_test.rb

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!
require_relative '../delete_vowels'

class DeleteVowelsTest < Minitest::Test
  def test_alphabet
    assert_equal(%w(bcdfghjklmnpqrstvwxyz),
                 remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)))
  end

  def test_mixed_case_words
    assert_equal(%w(grn YLLW blck wht),
                 remove_vowels(%w(green YELLOW black white)))
  end

  def test_all_caps
    assert_equal(['BC', '', 'XYZ'],
                 remove_vowels(%w(ABC AEIOU XYZ)))
  end
end
