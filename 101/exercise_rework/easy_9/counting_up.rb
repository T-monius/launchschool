# counting_up.rb

def neg_sequence(int)
  arr = []
  int.upto(-1) { |int1| arr << int1  }
  arr
end

def sequence(int)
  return neg_sequence(int) if int < 0
  arr = []
  1.upto(int) { |int1| arr << int1 }
  arr
end
