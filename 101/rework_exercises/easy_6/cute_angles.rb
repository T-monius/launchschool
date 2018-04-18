# cute_angles.rb

# Write a method that takes a floating point number that represents an
# angle between 0 and 360 degrees and returns a String that represents
# that angle in degrees, minutes and seconds. You should use a degree
# symbol (°) to represent degrees, a single quote (') to represent
# minutes, and a double quote (") to represent seconds. A degree has
# 60 minutes, while a minute has 60 seconds.

# Understanding:
# Input, integer
#   Convert decimal of angle given to degrees, minutes, and seconds
# Output, string
#   Represents degrees, minutes, and seconds of integer/angle given
#   Format minutes and seconds to be two digit numbers with leading 0

# Algorithm:
# Set variables to degrees and decimal remainder
# Set variable minutes with decimal to remainder * 60
# Re-assign minutes and remainder variables to divide off decimal
# Set seconds to remainder * 60
# Return interpolated string with degrees, minutes, seconds

# You may use this constant to represent the degree symbol:

DEGREE = "\xC2\xB0"

def dms(flt)
  degrees, remainder = flt.divmod(1)
  minutes = remainder * 60
  minutes, remainder = minutes.divmod(1)
  seconds = (remainder * 60).to_i
  "%d#{DEGREE}%02d'%02d\"" % [degrees, minutes, seconds]
end

# Examples:

puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6)# == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
# Note: your results may differ slightly depending on how you round
# values, but should be within a second or two of the results shown.

# You should use two digit numbers with leading zeros when formatting
# the minutes and seconds, e.g., 321°03'07".
