# bannerizer_test.rb

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!
require_relative '../bannerizer'

BOX_WITH_CONTENTS  = <<BOX
"+--------------------------------------------+"
"|                                            |"
"| To boldly go where no one has gone before. |"
"|                                            |"
"+--------------------------------------------+"
BOX

EMPTY_BOX = <<MTY
"+--+"
"|  |"
"|  |"
"|  |"
"+--+"
MTY

class BannerizerTest < Minitest::Test
  def test_contents_in_box
    assert_equal(BOX_WITH_CONTENTS,
                 build_box('To boldly go where no one has gone before.'))
  end

  def test_empty_box
    assert_equal(EMPTY_BOX, build_box(''))
  end
end
