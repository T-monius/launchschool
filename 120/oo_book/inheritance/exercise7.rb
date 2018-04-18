# exercise7.rb

# Create a class 'Student' with attributes name and grade. Do NOT make
# the grade getter public, so joe.grade will raise an error. Create a
# better_grade_than? method, that you can call like so...

# Understanding:
# Since every object inherits from Object, can use <=> to compare

class Student
  attr_accessor :name

  def initialize(n, g)
    self.name= n
    self.grade= g
  end

  def better_grade_than?(other_student)
    if (grade <=> other_student.grade) == 1
      true
    else
      false
    end
  end

  protected
  attr_accessor :grade
  
end

joe = Student.new('Joe', 87)
bob = Student.new('Bob', 84)
puts "Well done!" if joe.better_grade_than?(bob)
