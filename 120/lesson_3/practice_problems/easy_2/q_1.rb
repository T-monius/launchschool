# q_1.rb

# You are given the following code:

class Oracle
  def predict_the_future
    "You will " + choices.sample
  end

  def choices
    ["eat a nice lunch", "take a nap soon", "stay at work late"]
  end
end

# What is the result of calling

oracle = Oracle.new
oracle.predict_the_future
#=> "You will " + "eat a nice lunch" or "take a nap soon", or "stay at
#   work late"
