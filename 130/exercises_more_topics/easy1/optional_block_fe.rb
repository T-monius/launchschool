# optional_block_fe.rb

# Understanding:
# Modify `compute` to take a single argument
# yield argument to the block
#   - Print the return value of the block?
# provide at least three examples
def compute(arg)
  return_value = 'Does not compute.'
  return_value = yield(arg) if block_given?
  return_value
end

puts compute(2) { |num| num + 1 }
puts compute(34) { |num| num * 4 }
puts compute('a') { |character| character + 'pple' }
puts compute(18)
