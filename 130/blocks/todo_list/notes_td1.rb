# notes_td1.rb

# add
# Understanding:
# Modify the `TodoList` class
#   - `add` method
#     + Concatenates to a list
#     + List is an `Array` object
#     + Method returns that list
#     + Raises an error if the item type is not a `Todo` object
#       > Probably be nice as a guard clause
list.add(todo1)                 # adds todo1 to end of list, returns list
list.add(todo2)                 # adds todo2 to end of list, returns list
list.add(todo3)                 # adds todo3 to end of list, returns list
list.add(1)                     # raises TypeError with message "Can only add Todo objects"

# ---- Marking items in the list -----

# mark_done_at
# Understanding:
#   - The errors are consistent w/ `Array#fetch`
#   - Fetch the item, and then manipulate it.
# Approach
#   - Fetch the item.
#     + Store the return value in a variable
#   - Take the variable, and manipulate it

list.mark_done_at               # raises ArgumentError
list.mark_done_at(1)            # marks the 2nd item as done
list.mark_done_at(100)          # raises IndexError
