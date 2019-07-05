# uppercase_check.rb

# Write a method that takes a string argument, and returns true if all of
# the alphabetic characters inside the string are uppercase, false
# otherwise. Characters that are not alphabetic should be ignored.

def uppercase?(str)
  return false if str.scan(/\w/).any? {|letter| letter =~ /[a-z]/}
  true
end

def uppercase1?(str)
  str.scan(/\w/).none? {|letter| letter =~ /[a-z]/}
end

# Examples:

puts uppercase1?('t') == false
puts uppercase1?('T') == true
puts uppercase1?('Four Score') == false
puts uppercase1?('FOUR SCORE') == true
puts uppercase1?('4SCORE!') == true
puts uppercase1?('') == true
