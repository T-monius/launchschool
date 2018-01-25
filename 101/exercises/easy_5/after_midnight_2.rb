# after_midnight_2.rb

# As seen in the previous exercise, the time of day can be
# represented as the number of minutes before or after midnight. If
# the number of minutes is positive, the time is after midnight. If
# the number of minutes is negative, the time is before midnight.

# Write two methods that each take a time of day in 24 hour format,
# and return the number of minutes before and after midnight,
# respectively. Both methods should return a value in the range
# 0..1439.

# You may not use ruby's Date and Time methods.

# Understanding:
# Input string
# Output integer
# Hours and minutes given
# Parse string from ':'
# Convert string to int
# Positive method
#   Multiply hours by 60
#   Add to minutes
# Negative Method
#   Minus hours from 24 to get negative hours
#   Multiply negative hours by 60
#   Add result to mins

def after_midnight(time)
  hrs, mins = time.split(':')
  mins_in_hrs = hrs.to_i * 60
  total = mins_in_hrs + mins.to_i
  return 0 if total == 1440
  total
end

def before_midnight(time)
  hrs, mins = time.split(':')
  negative_hours = 24 - hrs.to_i
  mins = mins.to_i
  return 0 if negative_hours == 24 || negative_hours == 0
  if mins > 0
    negative_hours -= 1 # accounts for mins counting from previous hr
    negative_mins = negative_hours * 60
    negative_mins += (60 - mins) # Minutes that come from previous hr
  else
    negative_hours = negative_hours * 60
    negative_hours += (60 - mins)
  end
end

puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0
