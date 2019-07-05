# q_2.rb

# We have an Oracle class and a RoadTrip class that inherits from the
# Oracle class.

class Oracle
  def predict_the_future
    "You will " + choices.sample
  end

  def choices
    ["eat a nice lunch", "take a nap soon", "stay at work late"]
  end
end

class RoadTrip < Oracle
  def choices
    ["visit Vegas", "fly to Fiji", "romp in Rome"]
  end
end

# What is the result of the following:

trip = RoadTrip.new
trip.predict_the_future

# Answer:
# The RoadTrip#choices method overrides the superclass Oracle#choices
# method from which it inherits. Thus the return value of a call to a
# RoadTrip object (`trip`) will be in the form "You will <something>" to
# be determined by a random sampling of the three strings in the array
# object returned by the RoadTrip#choices method.
