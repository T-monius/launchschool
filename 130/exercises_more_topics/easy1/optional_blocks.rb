# optional_blocks.rb

# Understanding:
# Write a method
# Input
#   - Block
# Task
#   - Determine if block is included
# Output
#   - Block's return value
#   - String

def compute
  return_value = 'Does not compute.'
  return_value = yield if block_given?
  return_value
end


puts compute { 5 + 3 } == 8
puts compute { 'a' + 'b' } == 'ab'
puts compute == 'Does not compute.'
