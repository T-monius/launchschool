# multiplicative_average.rb

def show_multiplicative_average(arr)
  mult_average = arr.reduce(:*).fdiv(arr.size)
  format("The result is %.3f", mult_average)
end
