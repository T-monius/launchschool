# unlucky_days.rb

require 'pry'

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
# Can take modulus of year minus 1752 to see if it's a leap year.

# Years with 3 Friday the 13ths happen on 28 year cycles, 6, 11, 11
# There is a pattern for determining months that start on Sunday, but 
# it doesn't seem any easier to understand or use than my original 
# approach.

# Algorithm:
# Set variable to Monday for day of month
# Set variable year to 1753
# Set variable month to Jan
# Associate months with a number of days for value
#   Feb has 28 and 29
# Begin iteration
# Cycle months until reaching given year
#   Can use Array#rotate and days in a month to find starting day of the
#   next month
#   Increase year variable by one year
# When in given year, add to friday 13ths variable if month starts on a 
# Sunday

MONTH_DAYS = { jan: 31, feb: [28, 29], mar: 31, apr: 30, may: 31,
                june: 30, jul: 31, aug: 31, sep: 30, oct: 31, nov: 30,
                dec: 31 }

def leap_year?(yr)
  (yr - 1952) % 4 == 0
end

def friday_13th(input_year)
  week_days = ['th', 'f', 'sa', 'su', 'm', 'tu', 'w']
  yr = 1753
  friday_13ths = 0

  loop do
    break if yr > input_year
    MONTH_DAYS.each do |mnth, number_of_days|
      if input_year == yr
        friday_13ths += 1 if week_days[0] == 'su'
      end
      binding.pry
      if mnth == :feb && leap_year?(yr)
        week_days.rotate!(number_of_days[1])
      elsif mnth == :feb && leap_year?(yr) == false
        week_days.rotate!(number_of_days[0])
      else
        week_days.rotate!(number_of_days)
      end
    end
    yr += 1
  end
  friday_13ths
end

# Examples:

friday_13th(1753)

=begin
puts friday_13th(2015)# == 3
puts friday_13th(1986)# == 1
puts friday_13th(2019)# == 2
=end
