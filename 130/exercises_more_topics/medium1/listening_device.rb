# listening_device.rb

# Understanding:
# - Listening Device
#   + Represented by a class
#   + Behaviors of the device written as instance methods
#     > Listen, record, play
#       = something said, triggers record
#       = listen takes a block (which represents something said)
#   + recodings
#     > Instance variable

# Approach:
# - Fill in what's missing
#   + instance method `listen`
#     > Will not fail if no block is passed
#     > Invoke `record` on return value of block if passed
#     > Return block return or `nil`?
#   + instance method `play`
#     > Just output most recent recording?
#     > Output last value from recordings?

class Device
  def initialize
    @recordings = []
  end

  def record(recording)
    @recordings << recording
  end

  def listen
    record(yield) if block_given?
    nil
  end

  def play
    puts @recordings.last
  end
end

listener = Device.new
listener.listen { "Hello World!" }
listener.listen
listener.play # Outputs "Hello World!"
