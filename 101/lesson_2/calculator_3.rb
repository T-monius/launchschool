# calculator_3.rb
# Number validation.

# Suppose we're building a scientific calculator, and we now need to
# account for inputs that include decimals. How can we build a 
# validating method, called number?, to verify that only valid 
# numbers -- integers or floats -- are entered?

# Understanding:
# Floats and integers different by '.'
# Same validation as int except to parts of number <- and -> of '.'
# If include '.', separate string at '.' and set array indexes to 
# variables 
# Validate both variables.
# If both variables are valid integers, then rejoin as a string and
# call to_f on them returning that string

# Algorithm:
# Maintain integer? method to use to validate both integers if
# Float
# If input include? '.' call .split 
# Set a[0] and a[1] to separate variables.
# Call integer? on both variables
# If both variables valid return input to_f 
# Else include? '.' false simply return integer? on input
# at the top of calculator.rb

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

puts MESSAGES.inspect
=begin
  def integer?(input)
    input.to_i.to_s == input
  end

  def number?(input)
    arr = []
    a = ''
    b = ''
    if input.include?('.')
      arr = input.split('.')
      a = arr[0]
      b = arr[1]
      if integer?(a) && integer?(b)
        return true # input.to_f
      else
        return false  
      end
    else
      return integer?(input)
    end
  end

  puts number?('2.3')
  puts number?('3.d')
  puts number?('4')
=end