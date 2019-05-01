# welcome_stanger_test.rb

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!
require_relative '../welcome_stranger'

class WelcomeStranger < Minitest::Test
  def test_john_doe
    assert_equal("Hello, John Q Doe! Nice to have a Master Plumber around.",
                 greetings(['John', 'Q', 'Doe'], { title: 'Master',
                                                   occupation: 'Plumber' }))
  end
end
