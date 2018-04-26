# banner_class_fe.rb

# Behold this incomplete class for constructing boxed banners.

# Understanding:
# Input,
#   Constructor method takes a possible second argument
#   2nd argument specifies the desired width of the banner
#   Default the previous implementation?
#   Any line is the length of the message plus 2 w/ the standard
#   implementation.
# Output


class Banner
  attr_reader :width, :message

  def initialize(message, input_width=nil)
    @message = message
    if input_width.nil? || input_width < message.length
      @width = message.length + 2
    else
      @width = input_width
    end
  end

  def to_s
    [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
  end

  private

  def horizontal_rule
    "+#{'-' * width}+"
  end

  def empty_line
    "|#{' ' * width}|"
  end

  def message_line
    "|#{message.center(width, ' ')}|"
  end
end

# Complete this class so that the test cases shown below work as
# intended. You are free to add any methods or instance variables you
# need. However, do not make the implementation details public.

# You may assume that the input will always fit in your terminal window.

# Test Cases:

banner = Banner.new('To boldly go where no one has gone before.')
puts banner

# Expected Output:
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

banner = Banner.new('')
puts banner

# Expected Output:
# +--+
# |  |
# |  |
# |  |
# +--+

banner = Banner.new('To boldly go where no one has gone before.', 70)
puts banner
