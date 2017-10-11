=begin
  Take everything you've learned so far and build a mortgage 
  calculator (or car payment calculator -- it's the same thing).

  You'll need three pieces of information:

  the loan amount
  the Annual Percentage Rate (APR)
  the loan duration
  From the above, you'll need to calculate the following two things:

  monthly interest rate
  loan duration in months
=end

# Understanding:
# Input loan amount in dollars, APR, loan duration
# Need to convert APR to monthly interest rate
# Convert loan duration into months.
# Do I need to validate information?
# Separate variables for each piece of information
# Output monthly payment in dollars.

# Algorithm:
# Output request for loan amount to user
# Get loan amount, Set to variable (float)
# Get APR, Set to variable (float)
# Get loan duration, Set to variable (float)
# Call method with three arguments
# Set variable for monthly interest to conversion of APR into months
# Set variable of months to conversion of loan duration to months
# Set monthly payment variable to result of equation.

# m = p * (j / (1 - (1 + j)**(-n)))

# Refactoring:
# Message prompt method
# Validate input
  # loop that asks for numbers while not valid
  # allow either int or float input (partial yrs or decimal amts)
# Configuration file
  # Require yaml
  # Make MESSAGES
  # Extract messages to yaml file
  # Method that calls message file
  # update prompts to call message method
# Translations
  # Nest messages file
  # Set LANGUAGE at top of file
  # Creat method default language
LANGUAGE = 'es'

require 'yaml'
MESSAGES = YAML.load_file('mortgage_messages.yml')

def messages(message, lang='en')
  MESSAGES[lang][message]
end

def prompt(key)
  message = messages(key, LANGUAGE)
  (">> #{message}")  
end

def mortgage_calculator(loan_amount, apr, duration)
  monthly_interest = apr / 12
  total_months = duration * 12
  payment = loan_amount * (monthly_interest / (1 - (1 + 
  monthly_interest)**(-total_months))) 
end

def valid_int? num
  num.to_i.to_s == num && num.to_i.positive?
end

def valid_float? num
  num.to_f.to_s == num && num.to_f.positive?
end

puts prompt('welcome')
loop do
  loan_amount = ''
  loop do
    puts prompt ('loan')
    loan_amount = gets.chomp

    if valid_int?(loan_amount) || valid_float?(loan_amount)
      if valid_int?(loan_amount)
        loan_amount = loan_amount.to_i
      elsif valid_float?(loam_amount)
        loan_amount = loan_amount.to_f
      end
      break
    else
      puts prompt('valid')
    end
  end

  apr = ''
  loop do
    puts prompt('apr_request')
    apr = gets.chomp

    if valid_int?(apr) || valid_float?(apr)
      apr = apr.to_f/100
      break
    else
      puts prompt('valid')
    end
  end

  duration = ''
  loop do
    puts prompt('loan_duration')
    duration = gets.chomp

    if valid_int?(duration) || valid_float?(duration)
      if valid_int?(duration)
        duration = duration.to_i
      elsif valid_float?(duration)
        duration = duration.to_f
      end
      break
    else
      puts prompt('valid')
    end
  end

  puts prompt('monthly_payment')
  puts ("#{prompt('payment')}#{mortgage_calculator(loan_amount, apr, duration).round(2)}")
  puts prompt('repeat')
  again = gets.chomp
  break unless again.downcase.start_with?('y')
end

puts prompt('sign_off')
