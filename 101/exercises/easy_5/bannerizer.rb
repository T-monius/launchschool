# bannerizer.rb

# Write a method that will take a short line of text, and print it
# within a box.

# Understanding:
# Input == string
# Output String
# Box is five lines total
# Box begins two lines prior to output of input-string
#   '+' followed by '-', '-' printed for length of input-string, '-'
#   and '+' buffer past end of length of input-string
# Second row of box 
#   '|' plus ' ', followed by ' ' for length of string
#   ' ' plus '|' buffer after length of input-string printed
# Third Row of box
#   '|' plus ' ', followed by printing of input-string
#   ' ' plus '|' printed after input-string
# Fourth Row of box
#   Same as second row
# Fifth Row of box
#   Same as first row
# Can make separate methods that print different prefixes or suffixes
# when called
# Or, can print all rows in single method.

# Algorithm:
# Define prefix method
#   Two parameters
#   Print first parameter 1x
#   Print second parameter 1x
# Define inner box method
#   two parameters
#   if argument_1 == ' ' || '-'
#     puts ' ' for argument_2.length
#   else puts argument_1
# Re-use prefix method with arguments swapped for suffix
# Print_in_box method
#   Call prefix with '+' and '-'
#   Call inner_box with '-' and input-string(for length)
#   suffix fix with ' ' and '|', means SUFFIX
#   Call prefix with '|' and ' '
#   Call inner_box with ' ' and input-string(for length)
#   suffix with ' ' and '|'
#   Call prefix with '|' and ' '
#   Call inner_box with string as both inputs
#   suffix with ' ' and '|'
#   Call prefix with '+' and '-'
#   Call inner_box with '-' for length of input-string
#   suffix with '-' and '+'

# Refactoring:
# Even lines except 3 are the same
# Odd lines are the same
# 5.times do |iteration| 
#   if iteration.odd? && iteration != 3
#     prefix, inner_box, suffix (+-+)
#   elsif iteration == '3'
#     prefix, inner_box, suffix (| string  |)
#   else
#     prefix, inner_box, suffix (| |)
# end

def prefix(argument_1, argument_2)
  print argument_1
  print argument_2
end

def suffix(argument_1, argument_2)
  print argument_1
  puts argument_2
end

def inner_box(arg_1, arg_2)
  if arg_1 == '-'
    (arg_2.length).times { print '-' }
  elsif arg_1 == ' '
    (arg_2.length).times { print ' ' }
  else
    print arg_2
  end
end

def print_in_box(string)
  5.times do |i|
    if i.even? && i != 2
      prefix('+', '-')
      inner_box('-', string)
      suffix('-', '+')
    elsif i == 2
      prefix('|', ' ')
      inner_box(string, string)
      suffix(' ', '|')
    else
      prefix('|', ' ')
      inner_box(' ', string)
      suffix(' ', '|')
    end
  end
end

=begin
def print_in_box(string)
  prefix('+', '-')
  inner_box('-', string)
  suffix('-', '+')
  prefix('|', ' ')
  inner_box(' ', string)
  suffix(' ', '|')
  prefix('|', ' ')
  inner_box(string, string)
  suffix(' ', '|')
  prefix('|', ' ')
  inner_box(' ', string)
  suffix(' ', '|')
  prefix('+', '-')
  inner_box('-', string)
  suffix('-', '+')
end
=end

# Example:

print_in_box('To boldly go where no one has gone before.')
=begin
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+
=end
print_in_box('')
=begin
+--+
|  |
|  |
|  |
+--+
=end
# You may assume that the input will always fit in your terminal
# window.
