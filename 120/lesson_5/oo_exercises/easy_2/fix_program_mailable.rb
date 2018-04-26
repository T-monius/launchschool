# fix_program_mailable.rb

# Correct the following program so it will work properly. Assume that
# the Customer and Employee classes have complete implementations;
# just make the smallest possible change to ensure that objects of
# both types have access to the print_address method.

module Mailable
  # Added the constructor for testing
  def initialize(name='Joe Shmo', address='123 Main St', city='Springfield',
                 state='Autonomous Region', zipcode='77777')
    @name = name
    @address = address
    @city = city
    @state = state
    @zipcode = zipcode
  end

  def print_address
    puts "#{name}"
    puts "#{address}"
    puts "#{city}, #{state} #{zipcode}"
  end
end

class Customer
  include Mailable

  attr_reader :name, :address, :city, :state, :zipcode
end

class Employee
  include Mailable

  attr_reader :name, :address, :city, :state, :zipcode
end

betty = Customer.new 
bob = Employee.new
betty.print_address
puts '------------------------------------'
bob.print_address
