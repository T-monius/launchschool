# find_duplicate.rb

def find_dup(arr)
  sorted_arr = arr.sort
  duplicate = 0
  sorted_arr.each_with_index do |int, idx|
    next_int = sorted_arr[idx + 1]
    duplicate = int and break if int == next_int
  end
  duplicate
end
