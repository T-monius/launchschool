# grade_book.rb

# Write a method that determines the mean (average) of the three scores
# passed to it, and returns the letter value associated with that grade.

=begin
Numerical Score Letter  Grade
90 <= score <= 100  'A'
80 <= score < 90  'B'
70 <= score < 80  'C'
60 <= score < 70  'D'
0 <= score < 60 'F'
=end
# Tested values are all between 0 and 100. There is no need to check for
# negative values or values greater than 100.

def get_grade(scr, scr1, scr2)
  avg = (scr + scr1 + scr2)/3
  case
  when avg > 95
    'A+'
  when 90 <= avg && avg <= 95
    'A'
  when 80 <= avg && avg < 90
    'B'
  when 70 <= avg && avg < 90
    'C'
  when 60 <= avg && avg < 70
    'D'
  when 0 <= avg && avg < 60
    'F'
  end
end

# Example:

puts get_grade(95, 90, 93) == "A"
puts get_grade(50, 50, 95) == "D"
puts get_grade(103, 101, 99) == 'A+'
