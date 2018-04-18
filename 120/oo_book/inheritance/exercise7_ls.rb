# exercise7_ls.rb

class Student
  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(other_student)
    grade > other_student.grade
  end

  protected

  def grade
    @grade
  end
end

joe = Student.new("Joe", 93)
bob = Student.new("Bob", 78)

puts joe.better_grade_than?(bob)
