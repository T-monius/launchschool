# welcome_stranger.rb

# Create a method that takes 2 arguments, an array and a hash. The array
# will contain 2 or more elements that, when combined with adjoining
# spaces, will produce a person's name. The hash will contain two keys,
# :title and :occupation, and the appropriate values. Your method should
# return a greeting that uses the person's full name, and mentions the
# person's title.

# Understanding:
# Input, two inputs
#   Array of strings
#     Not sure how many array elements will be inputted
#       2 or more
#     Interpolate array elements into string
#     Join all elements of string with ' ' and intperpolate into string
#   Hash with symbol keys and string values
#     Interpolate the hash values into string through keys
# Output
#   Single string
#   All array elements interpolated in order
#   The hash values one after the other

def greetings(arr, hsh)
  full_name = arr.join(' ')
  "Hello, #{full_name}! Nice to have a #{hsh[:title]} #{hsh[:occupation]}"\
  ' around.'
end

# Example:

puts greetings(%w(John Q Doe),
               title: 'Master', occupation: 'Plumber') ==
     'Hello, John Q Doe! Nice to have a Master Plumber around.'
puts greetings(%w(Rick James),
               title: 'famous', occupation: 'singer') ==
     'Hello, Rick James! Nice to have a famous singer around.'
