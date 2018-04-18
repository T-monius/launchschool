# easy_2_q8.rb

# Shorten this sentence:

advice = "Few things in life are as important as house training" \
         " your pet dinosaur."
# ...remove everything starting from "house".

advice.slice!(39..-1)

# Review the String#slice! documentation, and use that method to make
# the return value "Few things in life are as important as ". But
# leave the advice variable as "house training your pet dinosaur.".

# As a bonus, what happens if you use the String#slice method instead?
