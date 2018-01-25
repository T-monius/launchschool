# staggered_caps_1.rb

# Write a method that takes a String as an argument, and returns a new
# String that contains the original value using a staggered capitalization
# scheme in which every other character is capitalized, and the remaining
# characters are lowercase. Characters that are not letters should not be
# changed, but count as characters when switching between upper and
# lowercase.

# Understanding:
# Input == string
# Output == string
# Every other index character to be capitalized (i.e. every odd idx)

# Algorithm:
# Instantiate return string
# Call each_char.with_index on string input
# push capitalized letters to new string.
#   Can call _capitalize_ at each iteration because it doesn't return 
#   erroneous info if called on non-alpha char

def staggered_case(str)
  new_str = ''
  str.each_char.with_index do |char, i| 
    if i.even?
      new_str << char.capitalize
    else
      new_str << char.downcase
    end
  end
  new_str
end

# Example:

puts staggered_case('I Love Launch School!')# == 'I LoVe lAuNcH ScHoOl!'
puts staggered_case('ALL_CAPS')# == 'AlL_CaPs'
puts staggered_case('ignore 77 the 444 numbers')# == 'IgNoRe 77 ThE 444 NuMbErS'