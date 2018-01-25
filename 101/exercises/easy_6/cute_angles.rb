# cute_angles.rb

# Write a method that takes a floating point number that represents
# an angle between 0 and 360 degrees and returns a String that
# represents that angle in degrees, minutes and seconds. You should
# use a degree symbol (°) to represent degrees, a single quote (') to
# represent minutes, and a double quote (") to represent seconds. A
# degree has 60 minutes, while a minute has 60 seconds.

# Note: your results may differ slightly depending on how you round
# values, but should be within a second or two of the results shown.

# You should use two digit numbers with leading zeros when formatting
# the minutes and seconds, e.g., 321°03'07".

# Understanding:
# A degree with decimal value represents the minutes and seconds
#   Subtract off whole number
#   Remainning decimal value x 60 to get whole minutes
#   Subtract off whole number
#   Remaining decimal value x 60 represents whole seconds
#   Remaining decimal value == decimals of a second

# Algorithm:
# Set degrees = input.to_i
# Set decimal_value = input - degrees
# Set minutes_and_decimal = decimal_value * 60
# minutes = minutes_and_decimal.to_i
# seconds_decimal = minutes_and_decimal - minutes
# seconds = (seconds_decimal * 60).to_i
# Return interpolated string with degrees, minutes, and seconds

# You may use this constant to represent the degree symbol:

DEGREE = "\xC2\xB0"

def dms(input)
  degrees = input.to_i
  decimal_value = input - degrees
  minutes_and_decimal = decimal_value * 60
  minutes = minutes_and_decimal.to_i
  seconds_decimal = minutes_and_decimal - minutes
  seconds = (seconds_decimal * 60).to_i
  #"%(#{degrees}#{DEGREE}#{minutes}'#{seconds}\")"
  "#{degrees}#{DEGREE}" + "%02d" % minutes + "'" + "%02d" % seconds + '"' 
  # format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

# Examples:

puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
