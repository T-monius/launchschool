# unlucky_days.rb

# Write a method that returns the number of Friday the 13ths in the
# year given by an argument. You may assume that the year is greater
# than 1752 (when the United Kingdom adopted the modern Gregorian
# Calendar) and that it will remain in use for the foreseeable future.

# Understanding after looking at LS solution:
# Can use the Date class
# Take input year as argument
# See if the 13th is a Friday for each month
#   Add to variable if it is

# Algorithm:
# Set return variable to 0
# Set starting date to Jan 13 of input year
# 12 times check if Friday the 13th is a friday with Date#wday
# Return friday_13ths variable

require 'date'

def friday_13th(input_year)  
  friday_13ths = 0
  d = Date.new(input_year, 1, 13)
  
  12.times do 
    friday_13ths += 1 if d.friday?
    d = d >> 1
  end
  friday_13ths
end

# Examples:

puts friday_13th(2020) == 2
puts friday_13th(2015) == 3
puts friday_13th(1986) == 1
puts friday_13th(2019) == 2
