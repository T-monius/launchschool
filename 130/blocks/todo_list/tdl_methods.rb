# tdl_methods.rb

# TodoList#find_by_title
# Input
#   - 1 string argument
# Task
#   - Perform selection
#     + Compare input to `Todo` items in list
#     + Compare by title?
#     + A powerful selector would compare by title or description
#     + Return first match
# Output
#   - `Todo` item or `nil`

# Approach:
# Define method w/ parameter
#   - Takes string
# Set variable to selection return
#   - Use `TodoList#select`
#   - Define criteria in block
#     + Two possible truthy
#     + Match for title or descripion
# Use tco to return
#   - If selection variable empty return `nil`
#   - Else return the first selection

# all_done
# Task
#   - Perform selection
# Output
#   - New `TodoList` object

# approach
# - Instantiate a new `TodoList` object
# - Iterate list
#   + Add to new list if done
# - Return new list

# mark_done
# Input
#   - String argument
# Task
#   - Perform transformation
#     > Since it's just one item more iterative
#   - Mutate a single `Todo` object
#     > Compare by string input
#     > title || description? 
# Output
#   - No significant output so probably should return `nil`

# mark_all_done
# Task
#   - Perform transformation
#   - Mutate all `Todo` objects
#   - done!
# Output
#   - No significant output so probably should return `nil` 
