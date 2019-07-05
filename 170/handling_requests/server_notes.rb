# server_notes.rb

# reference url, "GET /?rolls=2&sides=6 HTTP/1.1"

#  http_method == "GET"
#  path == "/"
#  params = { "rolls" => "2", "sides" => "6" }

# Understanding:
#   - The url brings me valueable information which I can use
#     to specify variables and behaviors in my program
#   - From the above url, I get the number of rolls as well
#     as the number of sides on the die.
#     + Sides will effect the parameter for rand()
#     + Rolls determines how many times I output the rolls
#   - Parse the string
#     + Set three variables
#     + http_method, path, and params
#     + Set variable http_method
#       > leading part of the string
#       > separated by a space and then a /
#       > Can I depend on the ' '?
#       > Split and take the 0 index
#     + Set variable path
#       > Split ang get index 0 if the first index
#     + Set hash
#       > Parse for parameters
#         = Follow '?' or '&'
#         = End with '='
#         = Use scan to get an array of parameters
#       > Parse for values
#         = Follow '='
#         = End with End of string, ' ' or "&"
#         = Use scan to get an array of values
#       > Number of values and parameters should match
#         = Iterate and set parameters to values in a hash











#       > Parse out parameters (i.e.'rolls' and 'sides')
#       > Parse out values for parameters
#       > I don't know how many digits that number is going to
#         be
#       > If it's one digit, get the number of rolls by finding
#         where the match for 'rolls' starts and taking the index
#         6 positions from where it starts
#       > For multiple digits, take from the position where the
#         number begins until &
#       > However, there may not be an & if the second parameter
#         is not included
#       > Solution: 
#         = If there is a 'rolls' parameter, iterate and get
#           the char at the position 6 away and contine to get
#           the following characters while they are 0-9
#         = Can repeat for 'sides'
