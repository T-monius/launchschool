# workpad.rb

# Understanding:
# Input
#   - String
#   - block
# Task
#   - Invoke block once for each character in the argument
# Output
#   - New string
#     + Concatenated return values

def convert(str)
  idx = 0
  return_array = []
  loop do
    break if idx == str.length
    return_array << yield(str[idx])
    idx += 1
  end
  return_array.join
end


# p convert('A simple string') { |char| char.upcase } # => "A SIMPLE STRING"
# p convert('xyyz') { |char| char + char }            # => xxyyyyzz
p convert('Ready? Set. Go!') { |char| char == ' ' ? '' : char }