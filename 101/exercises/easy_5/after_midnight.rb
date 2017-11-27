# after_midnight.rb

# The time of day can be represented as the number of minutes before
# or after midnight. If the number of minutes is positive, the time
# is after midnight. If the number of minutes is negative, the time
# is before midnight.

# Write a method that takes a time using this minute-based format and
# returns the time of day in 24 hour format (hh:mm). Your method
# should work with any integer input.

# You may not use ruby's Date and Time classes.

# Understanding:
# Input integer
# Inputs needs to be divided into complete hours and remaining minutes
# Output string two-parted: hour and minute

# Algorithm
# Define method w/ one parameter
# Set neg = false
# If negative? or input < 0
#   input = input * -1 
#   neg = true
# Determine if input >= minutes in a day (1400)
#   if input > 1439
#     Set hrs = input / 60 % 24
#   else
#     Set 'hrs' to input / 60
# Set variable 'mins' to input % 60
# if neg?
#   Here I can add another loop to address leading zero on single
#   digit numbers. Or, look at a format string.
#   if mins > 0 as you'll be so many minutes into the previous hour
#     "#{(24-hrs) - 1}:#{60-mins}"
#   else 
#     "24 minus hours: 60 minus mins"
# else
#   "#{hrs}:#{mins}"


def time_of_day(input)
  neg = false
  if input.negative?
    input = (input * - 1)
    neg = true
  end
  hrs = 0
  if input > 1439
    hrs = input / 60 % 24
  else
    hrs = input / 60
  end
  mins = input % 60
  if neg
    if mins > 0
      "#{"%02d" % ((24 - hrs)-1)}:#{"%02d" % (60 - mins)}"
    else
      "#{"%02d" % (24 - hrs)}:#{"%02d" % (60 - mins)}"      
    end
  else
    "#{"%02d" % hrs}:#{"%02d" % mins}"
  end
end

puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"
