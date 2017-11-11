# medium1_q6.rb

# In an earlier practice problem we saw that depending on variables
# to be modified by called methods can be tricky:

# How can we refactor this practice problem to make the result easier
# to predict and easier for the next programmer to maintain?

def not_tricky(a_string_param, an_array_param)
  a_string_param << ", rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
not_tricky(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"
