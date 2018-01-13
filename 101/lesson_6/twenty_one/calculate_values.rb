# calculate_values.rb

# Call values on individual hands and add to get total
# Any ace is given a value based on total values
# Separate method for calculating ace?
# Two methods: caluculate_values, calculate_aces
#   calculate_values
#     Separate aces into hash
#     total variable equal to total value of non-ace cards
#     Call calculate_aces with arguments total and aces
#     calculate_aces
#       Two parameters: total and aces hash
#       Can't have more than one ace that equals 11
#       Value of first ace most important
#       If more than 2 aces, they all have to equal 1
#       Operate on index of ace value array? Or, simply return appropriate
#       number?
#       Set aces_present = aces_hash.size
#       Set ace_keys = aces_hash.keys
#       case aces_present
#       when 0 then return total
#       when 1
#         if total + aces_hash[aces_keys[0]][1] <= 21
#           total + 11
#         else
#           total += 1
#       when 2
#         if total + aces_hash[ace_keys[0]][1] + aces_hash[ace_keys[1]][0] <= 21
#            total + aces_hash[ace_keys[0]][1] + aces_hash[ace_keys[1]][0]
#         else
#           total + aces_hash[ace_keys[0]][0] + aces_hash[ace_keys[1]][0]
#       when aces_present > 2
#         aces_present.times { total += 1 }
#     Return total

# Separate out aces
#   Have a hash iterate over hash
#   Set aces_hash to Select value is_a?(array)
#   Call deleteif on hnd if value is_a?(Array)

def calculate_aces(a_hsh, total)
  aces_present = a_hsh.size
  ace_keys = a_hsh.keys

  case aces_present
  when 0 then return total
  when 1 
    if total + 11 <= 21
      total += 11
    else
      total += 1
    end
  when 2
    if total + 12 <= 21
      total += 12
    else
      total += 2
    end
  else
    total += aces_present
  end
  total
end

def calculate_values(hnd)
  aces_hash = hnd.select { |crd, value| value.is_a?(Array) }
  hnd.delete_if { |crd, value| value.is_a?(Array) }
  total = hnd.values.sum
  calculate_aces(aces_hash, total)
end
