# unlucky_days_buggy.rb

# Write a method that returns the number of Friday the 13ths in the
# year given by an argument. You may assume that the year is greater
# than 1752 (when the United Kingdom adopted the modern Gregorian
# Calendar) and that it will remain in use for the foreseeable future.

# Understanding:
# For a friday the 13th to happen, the month had to start on a Sunday
# If I know the day of the week that the Gregorian calendar started,
# it's a matter of breaking down months since then to the input year
#   Derive the day of the month that started Jan 1, 1753.
#   Alternate months for a cycle of twelve to see the day of the week
#   for Jan 1, 1754: Thursday.
#   Can continue that process for any number of months until given year.
# Can take year minus 1752 modulus of 4 to see if it's a leap year.

# Years with 3 Friday the 13ths happen on 28 year cycles, 6, 11, 11
# There is a pattern for determining months that start on Sunday, but 
# it doesn't seem any easier to understand or use than my original 
# approach.

# Understanding after looking at LS solution:
# Can use the Date class
# My code originally looped over an array which represented a week
# starting Jan 1, 1753. 
#   Looped over the week to get to the inputted year
# With date, I can derive the start date of a given year without
# starting from 1753.
# The challenge then will be to create an array that represents the week
# starting Jan 1 of any year

# Algorithm:
# Associate months with a number of days for value
#   Feb has 28 and 29
# Set weeks variable with first day Thursday
# Set variable year to 1753
# Begin iteration
# Cycle months until reaching given year
#   Can use Array#rotate and days in a month to find starting day of the
#   next month
#   Increase year variable by one year
# When in given year, add to friday 13ths variable if month starts on a 
# Sunday (i.e. Date#wday == 0)

require 'date'

MONTH_DAYS = { jan: 31, feb: [28, 29], mar: 31, apr: 30, may: 31,
               june: 30, jul: 31, aug: 31, sep: 30, oct: 31, nov: 30,
               dec: 31 }

def leap_year?(year)
  (year - 1752) % 4 == 0
end

# REHASH THIS. LS used the Class Date. I can use it to establish
#   what day of the week Jan 1 is for a given year and fix my code.

# Create an array of the days of the week representing Jan 1, XXXX
#   Don't use a hash at all just an array with the ints
#   Use Date to get the day of the week that was Jan 1 that year
#   Rotate an array of ints 0..7 to the appropriate day of the week
#   Day +1 to get the next day

def week_of_jan_first(year)
  week_array = (0..7).to_a
  jan_1 = Date.new(year, 1, 1).wday
  week_array.rotate(jan_1)
end

# STILL DOESN'T WORK. So, counting years from 1753 didn't necessarily
# throw things off. Somehow, the whole approach is a bit off.
def friday_13th(input_year)  
  friday_13ths = 0
  week_days = week_of_jan_first(input_year)

  MONTH_DAYS.each do |month, number_of_days|
    friday_13ths += 1 if week_days[0] == 0
    if month == :feb && leap_year?(input_year)
      week_days.rotate!(number_of_days[1])
    elsif month == :feb && leap_year?(input_year) == false
      week_days.rotate!(number_of_days[0])
    else
      week_days.rotate!(number_of_days)
    end
  end
  friday_13ths
end

# Examples:

puts friday_13th(2020)# == 1
puts friday_13th(2015)# == 3
puts friday_13th(1986)# == 1
puts friday_13th(2019)# == 2
