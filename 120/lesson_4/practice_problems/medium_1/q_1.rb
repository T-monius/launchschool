# q_1.rb

# Ben asked Alyssa to code review the following code:

class BankAccount
  attr_reader :balance

  def initialize(starting_balance)
    @balance = starting_balance
  end

  def positive_balance?
    balance >= 0
  end
end

# Alyssa glanced over the code quickly and said - "It looks fine, except
# that you forgot to put the @ before balance when you refer to the
# balance instance variable in the body of the positive_balance? method."

# "Not so fast", Ben replied. "What I'm doing here is valid - I'm not
# missing an @!"

# Who is right, Ben or Alyssa, and why?

# Answer:
# Ben is right because the reference to `balance` on line 9 refers to the
# getter method `balance` which returns the value of the instance variable
# @balance. The method balance was created with the attr_reader on line
# 6; it will return the value to be evaluated by the operation >=.