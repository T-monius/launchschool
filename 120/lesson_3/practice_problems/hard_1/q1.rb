# q1.rb

# Alyssa has been assigned a task of modifying a class that was
# initially created to keep track of secret information. The new
# requirement calls for adding logging, when clients of the class
# attempt to access the secret data. Here is the class in its current
# form:

class SecretFile

  def initialize(secret_data, log)
    @data = secret_data
    @log = log
  end

  def data
    @log.create_log_entry
    @data
  end
end

# She needs to modify it so that any access to data must result in a log
# entry being generated. That is, any call to the class which will
# result in data being returned must first call a logging class. The
# logging class has been supplied to Alyssa and looks like the following:

class SecurityLogger
  attr_accessor :time, :name

  def create_log_entry
    loop do
      puts "Please enter your name: "
      self.name = gets.chomp
      break if !name.nil?
    end
    self.time = Time.new
  end
end

# What I don't like about this design is that presumably the client has
# not only access but control over the log file which they themselves
# pass into the `SecretFile` object.

log = SecurityLogger.new
file = SecretFile.new('Bob is scary', log)
puts file.data
puts log.time
puts "#{log.name} accessed this file."

# Hint: Assume that you can modify the initialize method in SecretFile
# to have an instance of SecurityLogger be passed in as an additional
# argument. It may be helpful to review the lecture on collaborator
# objects for this practice problem.

# Understanding:
# I would modify the class `SecretFile` such that the getter method
# `data` is defined explicitly and not through an attr_reader.
# The log would be modifed when the getter method is called before
# returning the value of @data.
# Expectation:
#   The LS program here is insisting on the use of a collaborator object
#   to add the functionality of a log.
#   
