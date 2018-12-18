# fib_number_location.rb

def find_fibonacci_index_by_length(desired_length)
  fibonacci_arr = [1, 1]
  idx = 3
  loop do
    current_element = fibonacci_arr[-1] + fibonacci_arr[-2]
    break if current_element.to_s.length == desired_length
    fibonacci_arr << current_element
    idx += 1
  end
  idx
end
