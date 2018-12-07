# repeat_yourself.rb

# Understanding
#   Write a method
#   Input, string and positive integer
#   - String#*
#   - puts
# Output
#   Print to the stdo first input (string) as many times as
#   second input (positive integer)

def repeat(str, int)
  int.times { puts str }
end

repeat('Hello', 3)
