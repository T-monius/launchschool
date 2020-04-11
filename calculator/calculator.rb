=begin
  Build a command line calculator program that does the following:

  asks for two numbers
  asks for the type of operation to perform: add, subtract, multiply or divide
  displays the result
  
  Use the Kernel.gets() method to retrieve user input, and use Kernel.puts()
  method to display output. Remember that Kernel.gets() includes the newline,
  so you have to call chomp() to remove it: Kernel.gets().chomp().      
=end

# Understanding
# Input will be two numbers received as strings as well as desired Math 
# expression described as a string
# Will have to convert string inputs to Math element to perform expression
# Output will be the the result of mathematical operation converted to string
# Do I have to output an error if the number input is not a real number?
# Do I have to output an error if the Math expression is not valid?

# Abstraction
=begin
  Use 'puts' to request a number from the user and save as a variable 
  converting into an integer
  Repeat
  Ask the user to input the function he'd like to perfom on the two numbers
  respectively
  Use flow control to aggregate to user desired math operation and perform it
  on variables
  Throw an error for division by zero
=end

Kernel.puts('Please enter an integer: ')
value_1 = Kernel.gets().chomp()
Kernel.puts('Enter an integer also: ')
value_2 = Kernel.gets().chomp()
Kernel.puts("Now enter 'add', 'subtract', 'multiply' or 'divide': ")
operation = Kernel.gets().chomp().downcase()

if operation == 'add'
  Kernel.puts(value_1.to_i() + value_2.to_i())
elsif operation == 'subtract'
  Kernel.puts(value_1.to_i() - value_2.to_i())
elsif operation == 'multiply'
  Kernel.puts(value_1.to_i() * value_2.to_i())
elsif operation == 'divide'
  if value_2 != 0
    Kernel.puts(value_1.to_f/value_2.to_f)
  else
    Kernel.puts("Cannot divide #{value_1} by Zero.")
  end
else
  Kernel.puts('You did not enter a valid math operation')  
end