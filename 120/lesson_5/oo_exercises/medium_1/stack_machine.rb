# stack_machine.rb

# You may remember our Minilang language from back in the 101 Medium
# exercises. We return to that language now, but this time we'll be
# using OOP. If you need a refresher, refer back to that exercise.

# Write a class that implements a miniature stack-and-register-based
# programming language that has the following commands:

# n Place a value n in the "register". Do not modify the stack.
# PUSH Push the register value on to the stack. Leave the value in
# the register.
# ADD Pops a value from the stack and adds it to the register value,
# storing the result in the register.
# SUB Pops a value from the stack and subtracts it from the register
# value, storing the result in the register.
# MULT Pops a value from the stack and multiplies it by the register
# value, storing the result in the register.
# DIV Pops a value from the stack and divides it into the register
# value, storing the integer result in the register.
# MOD Pops a value from the stack and divides it into the register
# value, storing the integer remainder of the division in the register.
# POP Remove the topmost item from the stack and place in register
# PRINT Print the register value
# All operations are integer operations (which is only important with
# DIV and MOD).

# Programs will be supplied to your language method via a string passed
# in as an argument. Your program should produce an error if an
# unexpected item is present in the string, or if a required stack value
# is not on the stack when it should be (the stack is empty). In all
# error cases, no further processing should be performed on the program.

# You should initialize the register to 0.

class Minilang
  OPERATIONS = [[:register_to_stack, 'PUSH'], [:add_stack_to_register, 'ADD'],
                [:subtract_from_register, 'SUB'],
                [:multiply_by_register, 'MULT'], [:divide_by_stack, 'DIV'],
                [:pop_stack_to_register, 'POP'], [:print_register, 'PRINT'],
                [:modulus_of_stack, 'MOD']]
  attr_accessor :program

  def initialize(program)
    self.register = 0
    @stack = []
    self.program = program.split
  end

  def num?(cmd)
    cmd.to_i.to_s == cmd
  end

  def make_register(num)
    self.register = num
  end

  def register_to_stack
    stack << register.clone
  end

  def add_stack_to_register
    self.register = stack.pop + register
  end

  def subtract_from_register
    self.register = register - stack.pop
  end

  def multiply_by_register
    self.register = register * stack.pop
  end

  def divide_by_stack
    self.register = register / stack.pop
  end

  def modulus_of_stack
    self.register = register % stack.pop
  end

  def pop_stack_to_register
    raise('Empty Stack!') if stack.empty?
    self.register = stack.pop
  end

  def print_register
    puts register
  end

  def valid_operation?(cmd)
    !!OPERATIONS.rassoc(cmd)
  end

  def operation(cmd)
    OPERATIONS.rassoc(cmd)[0]
  end

  def eval
    program.each do |cmd|
      if num?(cmd)
        self.register = cmd.to_i
      else
        begin
          raise "Invalid Token: #{cmd}" unless valid_operation?(cmd)
          send(operation(cmd))
        rescue StandardError => e
          puts e
          break
        end
      end
    end
  end

  protected

  attr_accessor :register
  attr_reader :stack
end

# Examples:

Minilang.new('PRINT').eval
# 0

Minilang.new('5 PUSH 3 MULT PRINT').eval
# 15

Minilang.new('5 PRINT PUSH 3 PRINT ADD PRINT').eval
# 5
# 3
# 8

Minilang.new('5 PUSH 10 PRINT POP PRINT').eval
# 10
# 5

Minilang.new('5 PUSH POP POP PRINT').eval
# Empty stack!

Minilang.new('3 PUSH PUSH 7 DIV MULT PRINT ').eval
# 6

Minilang.new('4 PUSH PUSH 7 MOD MULT PRINT ').eval
# 12

Minilang.new('-3 PUSH 5 XSUB PRINT').eval
# Invalid token: XSUB

Minilang.new('-3 PUSH 5 SUB PRINT').eval
# 8

Minilang.new('6 PUSH').eval
# (nothing printed; no PRINT commands)
