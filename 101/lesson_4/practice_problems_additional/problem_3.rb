# problem_3.rb

# In the age hash, throw out the really old people (age 100 or older).

# Understanding:
# Need to compare values
# Delete keys for values over 99.
# Operations performed on 'ages' hash itself by wording of task.

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.reject! { |k, v| v > 99 }
