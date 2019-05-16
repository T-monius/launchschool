# grade_book.rb

def get_grade(v, v1, v2)
  mean = (v + v1 + v2)/3
  if (0...60).cover?(mean)
    'F'
  elsif (60...70).cover?(mean)
    'D'
  elsif (70...80).cover?(mean)
    'C'
  elsif (80...90).cover?(mean)
    'B'
  elsif (90...100).cover?(mean)
    'A'
  else
    'NA'
  end
end
