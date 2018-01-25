# easy_1_q3.rb

# Replace the word "important" with "urgent" in this string:

# Understanding:
# Replace individual word
# Break string into separate words
# Compare words to 'important'
# If word == 'important'
# Replace w/ 'urgent'

# Data Structures:
# Strings
# Arrays

# Algorithm:
# Call split on advice and store its value in a variable
# Call .each on array variable 
# 

advice = "Few things in life are as important as house training your"\
         " pet dinosaur."

def important_swap(string)
  array = string.split
  array.map! do |element|
          if element == 'important'
            element = 'urgent'
          else
            element = element
          end
        end
  array.join(' ')
end

puts important_swap(advice)
