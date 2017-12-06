# combining_arrays_further.rb

# Write a method that takes two Arrays as arguments, and returns an
# Array that contains all of the values from the argument Arrays.
# There should be no duplication of values in the returned Array,
# even if there are duplicates in the original Arrays.

# Understanding:
# Input two arrays
# Output one array
# Set new_array = arr + other_arr
# Call uniq! on new arr
# Challenge:
# Solve this more rudimentarily
# Recursion not ideal solution for there is no declination toward 0
# Perhaps count each occurence of an element
#   How would I do that in a recursive array not a hash?
#   Store occurrences in array or hash and delete that many minus one
#   from the original array.
#   Or, Create a new array that contains only one element for each
#   original key no matter how many occurences in the original array


# Failed Algorithm for challenge
# No declination of a value to zero or some cut off point.
# Method takes two parameters
# 
# Instantiate counter
# if arr.length <= 0
#   return new_arr
# Set variable to arr[0]
# loop over arr
#   break if counter == arr.length
#   compare variable to arr[couter]
#   if variable == arr[counter]
#     counter += 1
#   else
#     new_arr << arr[counter]
#     counter += 1
#  end
# new_arr.unshift(variable)
# arr = new_arr

# Challenge algorithm with hash:
# Set new_array = arr + arr_1
# Instantiate empty hash with default value of 0
# iterate over new_array increasing value of each key by iteration
# empty new_array
# iterate over hash and push each key to new_array one time

def merge(arr, arr_1)
  new_array = arr + arr_1
  temp_hash = Hash.new(0)
  
  new_array.each {|num| temp_hash[num]+= 1 }

  new_array = []
  temp_hash.each { |k, _| new_array << k }
  new_array
end

# Example

puts merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
