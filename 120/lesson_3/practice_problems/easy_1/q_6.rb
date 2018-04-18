# q_6.rb

# What could we add to the class below to access the instance variable
# @volume?

class Cube
  def initialize(volume)
    @volume = volume
  end

# We can add a getter method, or an attr_reader, writer, or accessor
  def volume
    @volume
  end
end

# Alternatively, Object#instance_variable_get is a less than ideal solution
