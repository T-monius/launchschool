# final_assess_problem.rb

class Employee
  attr_accessor :name, :serial_number, :time, :desk

  def initialize(name, serial_number)
    self.name = name
    self.serial_number = serial_number
    set_desk
  end

  def set_desk
    self.desk = 'open'
  end

  def to_s
    "Name: #{name}\n"\
    "Type: #{self.class}\n"\
    "Serial Number: #{serial_number}\n"\
    "Desk: #{desk}"
  end
end

class FullTimeEmployee < Employee
  attr_accessor :vacation

  def initialize(name, serial_number)
    super(name, serial_number)
    self.vacation = 10
    self.time = 'full time'
  end

  def set_desk
    self.desk = 'cubicle'
  end

  def take_vacation
    "I have #{vacation} days off!"
  end

  def to_s
    "Name: #{name}\n"\
    "Type: #{self.class}\n"\
    "Serial Number: #{serial_number}\n"\
    "Vacation days: #{vacation}\n"\
    "Desk: #{desk}"
  end
end

module Commandable
  def delegate
    'Give work to others.'
  end
end

class Manager < FullTimeEmployee
  include Commandable

  def initialize(name, serial_number)
    super
    self.vacation = 14
  end

  def set_desk
    self.desk = 'regular private office'
  end
end

class Executive < FullTimeEmployee
  include Commandable

  def initialize(name, serial_number)
    super
    self.vacation = 20
  end

  def set_desk
    self.desk = 'corner office'
  end
end

employee = Employee.new('jeff', 112)
full_time = FullTimeEmployee.new('Joe', 132)
manager = Manager.new('Rick', 124)
executive = Executive.new('Ron', 221)
puts employee
puts '==============='
puts full_time
puts '==============='
puts manager
puts '==============='
puts executive
