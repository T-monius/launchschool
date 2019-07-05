# Understanding
#   - Atbash is a cipher
#     > Associate first 13 letters of the alphabet with the last
# Test Suite
#   - Class method `encode`
#   - Input
#     > String
#   - Output
#     > Encrypted str
#     > downcased
#     > 5 character sequences spaced

# Approach
#   - Create class
#   - Create encode class method
#     + Downcase and remove whitespace characters
#     + Convert to Atbash
#       > Atbash method
#         = Perform transformation
#         = Map characters
#         = Return characters according to encrypted version
#           - Dictionary lookup
#         = Join in a new string
#     + Get array of 5 character sequences
#       > Turn to array
#       > Iterate
#         = Break if array.empty?
#         = remove first 5 from array push to new array joined
#       > join array