# bannerizer.rb

# Write a method that will take a short line of text, and print it
# within a box.

# Undertanding:
# Input, string
#   Not greater than terminal length
#   Push entire output string to variable
#   Or, print as I go
#   Body of all lines of the string are the same
# Output
#   String in a box output to terminal

def print_borders(str_size)
  puts "+-#{'-' * str_size}-+"
end

def print_inside(str1)
  puts "| #{str1} |"
end

def print_in_box(str)
  l = str.length.to_i
  print_borders(l)
  print_inside(' ' * l)
  print_inside(str)
  print_inside(' ' * l)
  print_borders(l)
end

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
