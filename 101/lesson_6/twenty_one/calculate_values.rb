# calculate_values.rb

# Call values on individual hands and add to get total
# Any ace is given a value based on total values
# Separate method for calculating ace?
# Two methods: caluculate_values, calculate_aces
#   calculate_values
#     Separate aces into hash
#     total variable equal to total value of non-ace cards
#     Call calculate_aces on total and aces
#     calculate_aces
#       Two parameters: total and aces hash
#       Can't have more than one ace that equals 11
#       Value of first ace most important
#       If more than 2 aces, they all have to equal 1
#       if total + one ace < 21 first ace equals 11
#     Return total
#     
