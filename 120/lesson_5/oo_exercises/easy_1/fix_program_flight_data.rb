# fix_program_flight_data.rb

# Consider the following class definition:

class Flight
  attr_accessor :database_handle

  def initialize(flight_number)
    @database_handle = Database.init
    @flight_number = flight_number
  end
end


# There is nothing technically incorrect about this class, but the
# definition may lead to problems in the future. How can this class be
# fixed to be resistant to future problems?

# Apparently, a new instance of the Database class is instantiated with
# the Class method init which may or may not be a part of the version
# of Ruby which a user of the program is using. As I am using Ruby 2.4.1
# , I can't find the method in the standard library, nor can I find it
# in the std lib of the first release of Ruby. It would be better to use
# new since the init in use may be part of a gem or elsewhere but could
# definitely cause some confusion.

# LS answer as mine was bunk

# Approach/Algorithm
# Hint: Consider what might happen if you leave this class defined as
# it is, and later decide to alter the implementation so that a database
# is not used.

# Solution
# Delete the following line:

# attr_accessor :database_handle
# Discussion
# The problem with this definition is that we are providing easy access to the @database_handle instance variable, which is almost certainly just an implementation detail. As an implementation detail, users of this class should have no need for it, so we should not be providing direct access to it.

# The fix is easy: don't provide the unneeded and unwanted attr_accessor.

# What can go wrong if we don't change things? First off, by making
# access to @database_handle easy, someone may use it in real code. And
# once that database handle is being used in real code, future
# modifications to the class may break that code. You may even be
# prevented from modifying your class at all if the dependent code is of
# greater concern.
