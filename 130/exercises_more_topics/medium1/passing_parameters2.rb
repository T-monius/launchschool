# passing_parameters2.rb

# Understanding:
# - We can assign variables by listing them before the assignment
#   + Match each element of the array with a variable
#   + Or, creatively use the splat (*) operator
# Write a method
# Input
# - Array
# Task
#   - Yield array to a block
#     + Block should take the array parameter and remove the
#       raptors
# - Output
#   + Group of `raptors` (array)

birds = %w(raven finch hawk eagle)

def get_raptors(birds)
  yield(birds)
end

p get_raptors(birds) { |_, _, *raptors| raptors }
