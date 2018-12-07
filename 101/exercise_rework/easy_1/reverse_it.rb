# reverse_it.rb

# Understanding
# Method
# Input, str
# Output, str with words reversed (assuming a new string)

def reverse_sentence(str)
  str_arr = str.split
  str = str_arr.reverse.join(' ')
end

p reverse_sentence('') == ''
p reverse_sentence('Hello World') == 'World Hello'
p reverse_sentence('Reverse these words') == 'words these Reverse'

# MIS-Understanding
# Method
# Input, single string
#   Task = Reverse the string by mutating it
#   - Make a copy of the string
#   - Count the string and derive and index
#   Iterate
#     - At each iteraton assign the last character of the copy
#       to the original string at the index of iteration.
# Output, same string reversed 
#   - String with an equal value returned?
#   - Sting with the same object id?
=begin
def reverse_sentence(str)
  new_str = str.clone
  idx = 0
  r_idx = -1

  loop do
    break if idx == str.length
    str[idx] = new_str[r_idx]
    idx += 1
    r_idx -= 1
  end
  str
end

# Test Cases
x_str = 'yep'
puts x_str
puts x_str.object_id
puts reverse_sentence(x_str)
puts x_str
puts x_str.object_id
puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
=end
