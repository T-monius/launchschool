# after_midnight_2.rb

# As seen in the previous exercise, the time of day can be represented
# as the number of minutes before or after midnight. If the number of
# minutes is positive, the time is after midnight. If the number of
# minutes is negative, the time is before midnight.

# Write two methods that each take a time of day in 24 hour format,
# and return the number of minutes before and after midnight,
# respectively. Both methods should return a value in the range
# 0..1439.

# Understanding:
# Input
#   String
#   Represents hrs and minutes
#   60 mins in an hour
# Output in range 0..1439
#   Will there have been invalid inputs

MINS_IN_DAY = 1440

def minutes_parser(time_str)
  hrs, mins = time_str.split(":")
  return 0 if hrs == '24'
  hrs.to_i * 60 + mins.to_i
end

def after_midnight(input_time)
  minutes_parser(input_time)
end

def before_midnight(input_time)
  return 0 if minutes_parser(input_time) == 0
  MINS_IN_DAY - minutes_parser(input_time)
end

# You may not use ruby's Date and Time methods.

# Examples:

puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34')  == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0

# Disregard Daylight Savings and Standard Time and other
# irregularities.
