# stack_machine.rb

# Write a method that implements a miniature stack-and-register-based
# programming language that has the following commands:

=begin
n_ Place a value n in the "register". Do not modify the stack.
PUSH_ Push the register value on to the stack. Leave the value in the register.
ADD_ Pops a value from the stack and adds it to the register value, storing the result in the register.
SUB_ Pops a value from the stack and subtracts it from the register value, storing the result in the register.
MULT_ Pops a value from the stack and multiplies it by the register value, storing the result in the register.
DIV_ Pops a value from the stack and divides it into the register value, storing the integer result in the register.
MOD_ Pops a value from the stack and divides it into the register value, storing the integer remainder of the division in the register.
POP_ Remove the topmost item from the stack and place in register
PRINT_ Print the register value
=end

# Understanding:
# The stack starts empty
# Register value initially 0
# As values pushed to the stack, register value stays the same
# Register value updated if integer argument received or operation
# performed
# Can store negative values, but absolute value of the operation
# outputted when printed?

# Algorithm:
# Define method that takes a single argument or multiple wild cards
# Set stack variable to empty array
# Set register variable to 0
# Define each operation method to use main method variables as parameters
# String inputs so that an all uppercase cmd not interpretted as 
# constant
# How to deal with individual commands in cmd array?
#   Case statement?
#   Operations on one line
#     Operation method
#       Hash of operations {'MULT' => *...}
#       Return register value
#     Register value updated
#   cmd .each as follows
#   Only three other commands, so case statement wouldn't be too long
#   cmd == int
#     update register
#   'PUSH'
#     push register value to stack array
#   'POP'
#     update register by replacing with stack pop
#   'PRINT'
#     print absolute value of register value to output

def operation_call(cmd_string, st, reg)
  operations = { 'MULT' => '*', 'DIV' => '/', 'ADD' => '+',
                 'SUB' => '-', 'MOD' => '%' }
  operator = operations[cmd_string]

  reg.send(operator, st.pop)
end

def minilang(cmds)
  stack = []
  register = 0

  cmds.split.each do |cmd|
    case
    when cmd.to_i.to_s == cmd then register = cmd.to_i
    when cmd == 'POP' then register = stack.pop
    when cmd == 'PUSH' then stack << register
    when cmd == 'PRINT' then puts register.abs
    else
      register = operation_call(cmd, stack, register)
    end
  end
end

minilang('PRINT')
minilang('5 PUSH 3 MULT PRINT')
minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
minilang('5 PUSH POP PRINT')
minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
minilang('-3 PUSH 5 SUB PRINT')
minilang('6 PUSH')
