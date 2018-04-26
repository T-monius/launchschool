# find_class.rb

# Update the following code so that, instead of printing the values,
# each statement prints the name of the class to which it belongs.

# Understanding:
# Each object in the following examples is a member of a class.
# Puts can either output to the objects `to_s` object value, or another
# method can be called on the object to have `puts` output the name of
# the class to which it belongs.

puts "Hello".class
# => String

puts 5.class
# => Integer     # "Fixnum" if you're using Ruby version older than 2.4.0

puts [1, 2, 3].class
# => Array
