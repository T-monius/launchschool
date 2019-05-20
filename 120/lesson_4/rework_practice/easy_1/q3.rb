# q3.rb

# Answer:
# The class of the object is interpolated into the output
# string because a reference to the object itself is referenced
# by `self` in the string interpolation. Further, that
# same object is used to invoke the method `class` which reveals
# the class of the calling object.
