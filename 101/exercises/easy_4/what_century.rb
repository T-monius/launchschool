# what_century.rb

# Write a method that takes a year as input and returns the century.
# The return value should be a string that begins with the century
# number, and ends with st, nd, rd, or th as appropriate for that
# number.

# New centuries begin in years that end with 01. So, the years
# 1901-2000 comprise the 20th century.

# Understanding:
# Integer input
# String output
# Year Zero invalid?
# th if last character == 0
# st if last character == 1
# nd if 2
# rd if 3
# th if 4 through 9
# All 10-19 'th'
# 20 plus follow same pattern as 0-9
# Can use a hash to store int char as key and 'str' as value
# Also, could use a case statement for adding suffixes
# Centuries are 'offset' by a hundred
# Derive century by 'adding 100 then / 100?'
# If number % 100 == 0 don't add 100.
# Make three separate methods? 
# Suffix method adds suffix to one digit numbers
# Teen method determines if a number is a teen and returns 'th' if so

# Algorithm Suffix Method:
# Break all numbers that aren't teens down to one digit
# determine suffix according to last digit

def teen?(number)
  (11..19).include?(number)
end

def number_suffix(number)
  if teen?(number) || teen?(number.to_s[-2..-1].to_i)
    "#{number}th"
  else
    if number.digits.reverse[-1] == 1
      "#{number}st"
    elsif number.digits.reverse[-1] == 2
      "#{number}nd"
    elsif number.digits.reverse[-1] == 3
      "#{number}rd"
    else
      "#{number}th"
    end
  end
end

def century(num)
  century = 0
  num % 100 == 0? century = num / 100: century = (num + 100)/ 100
  number_suffix(century)
end

puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'