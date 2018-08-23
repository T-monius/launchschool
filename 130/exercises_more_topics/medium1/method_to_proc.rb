# method_to_proc.rb

# Understanding:
# - The code on line 2 is key
#   + This is where an individual number is converted to base 8
#     > When working with an integer, `Integer#to_s` can be
#       used for this
#     > However, our final output will be an Integer, so 
#       `String#to_i` must also be used.
#     > The base 8 conversion can be made with either of the
#       calls.
# - Line 6
#   + This is where the proc is created
#   + The method argument will be the method we modified lines
#     1 through 3
# - Line 10
#   + Simply put the appropriate proc name there.

def convert_to_base_8(n)
  n.to_s(8).to_i
end

base8_proc = method(:convert_to_base_8).to_proc

p [8,10,12,14,16,33].map(&base8_proc)
