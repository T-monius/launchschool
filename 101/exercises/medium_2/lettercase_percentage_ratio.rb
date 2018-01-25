# lettercase_percentage_ratio.rb

# In the easy exercises, we worked on a problem where we had to count
# the number of uppercase and lowercase characters, as well as
# characters that were neither of those two. Now we want to go one step
# further.

# Write a method that takes a string, and then returns a hash that
# contains 3 entries: one represents the percentage of characters in
# the string that are lowercase letters, one the percentage of
# characters that are uppercase letters, and one the percentage of
# characters that are neither.

# You may assume that the string will always contain at least one
# character.

# Understanding:
# Input, string
# Output, hash
# Identify character element type for each character in string.
# Can use runs in string comparison or regex
# Different methods for different functions?

# Algorithm:
# Perform matches on the three character types
#   Set variable type to size of match
#   Set percentage variable for type to type size per string size
#   Send to hash maker
# Or, Set criteria variables
#   Iterate over criteria and push to hash according to criteria
#   Use method to calculate the percentage

def percentage_finder(st, criteria)
  string_size = st.size
  match_size = st.count(criteria)
  (match_size * 100).to_f / string_size
end

def letter_percentages(str)
  criterian = [[:lowercase, 'a-z',],
               [:uppercase, 'A-Z'],
               [:neither, '^A-z'] ]
  criterian.each_with_object({}) do |criteria, hash|
    hash[criteria[0]]= percentage_finder(str, criteria[1])
  end
end

# Examples

puts letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
puts letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
puts letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
