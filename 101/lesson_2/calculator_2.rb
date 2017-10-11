# This is the Launch School v. of 'calculator'

LANGUAGE = 'es'

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def messages(message, lang='en')
  MESSAGES[lang][message]
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

# Better integer validation.

# The current method of validating the input for a number is very
# weak. It's also not fully accurate, as you cannot enter a 0. Come
# up with a better way of validating input for integers.

def valid_number?(num)
  num.to_i.to_s == num
end

def operation_to_message(op)
  variable =  case op
                when '1'
                  'Adding'
                when '2'
                  'Subtracting'
                when '3'
                  'Multiplying'
                when '4'
                  'Dividing'
              end 
  return variable
end

prompt(messages('welcome', LANGUAGE))

name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt(messages('valid_name', LANGUAGE))
  else
    break
  end
end

loop do
  prompt(messages('hi', LANGUAGE)+" #{name}!")

  number1 = ''
  loop do
    prompt(messages('number1', LANGUAGE))
    number1 = Kernel.gets().chomp()

    if valid_number?(number1)
      break
    else
      prompt(messages('not_number', LANGUAGE))
    end
  end

  number2 = ''
  loop do
    prompt(messages('number2', LANGUAGE))
    number2 = Kernel.gets().chomp()

    if valid_number?(number2)
      break
    else
      prompt(messages('not_number', LANGUAGE))
    end
  end

  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG

  prompt(operator_prompt)

  operator = ''
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(messages('not_command', LANGUAGE))
    end
  end

  prompt("#{operation_to_message(operator)} "+messages('numbers', LANGUAGE))

  result = case operator
           when '1'
             number1.to_i() + number2.to_i()
           when '2'
             number1.to_i() - number2.to_i()
           when '3'
             number1.to_i() * number2.to_i()
           when '4'
             if number2 == '0'
               prompt(messages('zero_division', LANGUAGE))
               break
             end  
             number1.to_f() / number2.to_f()
           end

  prompt(messages('the_result', LANGUAGE)+"#{result}.")

  prompt(messages('again', LANGUAGE))
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt(messages('goodbye', LANGUAGE))
