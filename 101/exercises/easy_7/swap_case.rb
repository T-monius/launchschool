# swap_case.rb

# Write a method that takes a string as an argument and returns a new
# string in which every uppercase letter is replaced by its lowercase
# version, and every lowercase letter by its uppercase version. All other
# characters should be unchanged.

# You may not use String#swapcase; write your own version of this method.

# Understanding:
# Input string
# Output string
# Perform transformation

# Algorithm
# Loop over string input
# Counter represents char in string to be transformed if alphabetical
# If (97-122).include?(string[counter].ord)
#   string[counter] = (string[counter].ord - 32).chr
# Elsif (65-90).include?(string[counter].ord) 
#   string[counter] = (string[counter].ord + 32).chr

def swapcase(str)
  counter = 0

  loop do
    break if counter == str.length

    if (65..90).include?(str[counter].ord)
      str[counter] = (str[counter].ord + 32).chr
    elsif (97..122).include?(str[counter].ord)
      str[counter] = (str[counter].ord - 32).chr
    end
    counter += 1
  end
  str
end

# Example:

puts swapcase('CamelCase') == 'cAMELcASE'
puts swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'