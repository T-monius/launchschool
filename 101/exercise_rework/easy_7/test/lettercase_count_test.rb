# lettercase_count_test.rb

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!
require_relative '../lettercase_counter'

class LetterCaseCountTest < Minitest::Test
  def test_letters_space_numbers
    assert_equal({ lowercase: 5, uppercase: 1, neither: 4 }, letter_case_count('abCdef 123'))
  end

  def test_letters_space_special_letters
    assert_equal({ lowercase: 3, uppercase: 3, neither: 2 }, letter_case_count('AbCd +Ef'))
  end

  def test_numbers
    assert_equal({ lowercase: 0, uppercase: 0, neither: 3 }, letter_case_count('123'))
  end

  def test_empty
    assert_equal({ lowercase: 0, uppercase: 0, neither: 0 }, letter_case_count(''))
  end
end
