# exception_setup.rb

class NoExperienceError < StandardError; end

class Employee
  attr_accessor :experience, :name

  def initialize(experience= 0, name='Rick')
    self.experience = experience
    self.name = name
  end

  def hire
    raise(NoExperieceError) unless experience > 0
    "#{name} is hired."
  end
end
