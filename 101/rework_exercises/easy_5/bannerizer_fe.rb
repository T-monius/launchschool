# bannerizer_fe.rb

# Understanding:
# If the input is longer than 76 (80 with buffer characters) need to 
# wrap the text (i.e. print on more than one line)
# Split the string into array of string elements
#   Define method that returns an array
#   while str.length > 76 split it
#   Array then printed recursively
#   Or, Array iterated over and printed

def string_splitter(str)
  arr = []
  initial = str[0..str.rindex(' ')]
  rest = str[str.rindex(' ')..-1]
  arr << initial
  arr << rest
  arr
end

def print_borders(str_size)
  puts "+-#{'-' * str_size}-+"
end

def print_inside(str1)
  puts "| #{str1} |"
end

def print_in_box(str)
  l = str.length.to_i
  arr = string_splitter(str)
  print_borders(l)
  print_inside(' ' * l)
  l.times { |i| print_inside(arr[i]) }
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
print_in_box('To boldly go where no one has gone before,' \
             ' and only the bold ever really go there.')

print_in_box('')

# Further Exploration
# Modify this method so it will truncate the message if it will be too
# wide to fit inside a standard terminal window (80 columns, including
# the sides of the box). For a real challenge, try word wrapping very
# long messages so they appear on multiple lines, but still within a
# box.
