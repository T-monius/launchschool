# swap_case.rb

# Write a method that takes a string as an argument and returns a new
# string in which every uppercase letter is replaced by its lowercase 
# version, and every lowercase letter by its uppercase version. All
# other characters should be unchanged.

# You may not use String#swapcase; write your own version of this
# method.

# Understanding:
# Input, string
#   Iterate over the string
#   Perform transformation
#   Upcase and lowercase characters are separated by a value of 32 on
#   the ascii chart
# Output, string

def swapcase(str)
  ascii_array = str.codepoints.map do |ascii_value|
    if (65..90).include?(ascii_value)
      ascii_value + 32
    elsif (97..122).include?(ascii_value)
      ascii_value - 32
    else
      ascii_value
    end
  end
  ascii_array.map(&:chr).join
end

# Example:

p swapcase('CamelCase')# == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV')# == 'tONIGHT ON xyz-tv'
