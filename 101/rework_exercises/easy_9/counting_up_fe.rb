# counting_up_fe.rb

# Further Exploration
# Food for thought: what do you think sequence should return if the
# argument is not greater than 0. For instance, what should you do if
# the argument is -1? Can you alter your method to handle this case?

def sequence(int)
  return (int..-1).to_a if int.negative?
  return [0] if int == 0
  (1..int).to_a
end

# Examples:

p sequence(-5) == [-5, -4, -3, -2, -1]
p sequence(-3) == [-3, -2, -1]
p sequence(-1) == [-1]
p sequence(0) == [0]
