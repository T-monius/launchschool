# in_ex_notes.rb

# Understanding:
# Ruby provides different mechanisms to iterate over data structures
# Internal iteration
#   - Mechanism of iteration hidden from the  user
# External iteration
#   - Iteration at the behest of the user.
# Task
#   - Create a new `Enumerator` object.
#   - The `Enumerator::new` method allows you to define a block
#     which will yield elements to the enumerator object
#     + The elements yielded are the elements over which to
#       be iterated
#     + The optional parameter is to calculate the size of the
#       enumerator although I haven't seen a good example of this.
#     + The idea of the construct is to create a data structure
#       with a mechanism to determine how it iterates.
#   - As I read the description, it seems that the members of
#     the enumerator are not strictly defined as 'it can iterate
#     over an infinite list of factorials'.
#     + This would cause me to reason that the enumerator is
#       like a container in which an arbitrary list can be
#       stored.
#     + In fact, many data structures can expand and contract
#     + The enumerator perhaps knows how the next value will
#       be derived? Is that the distinction here?
# 
#     + Define values iterated upon
#     + Infinite list of 'factorials'
#       > Is the factorial (i.e. 5!) stored in the enumerator,
#         or it's value (i.e. 120)?
#   - Review and understand 'factorial'
#     + The factorial of a number is the product of all of the
#       positive integers less than or equal to n.
#   - Print out the first 7 factorials
#     + Print with an external iterator
#     + Reset your enumerator
#     + Reprint using custom Enumerator object

