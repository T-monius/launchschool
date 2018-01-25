# exclusive_or.rb

# In this exercise, you will write a method named xor that takes two
# arguments, and returns true if exactly one of its arguments is
# truthy, false otherwise.

# Undertanding:
# Arguments can be any object type as long as they evaluate to true
# or false.
# Evaluate first argument for true
# If true && 2nd false return true
# If false && 2nd true return true
# Else return false

def xor?(argument_1, argument_2)
  if argument_1
    if argument_2 == false
      return true
    else
      return false
    end
  elsif argument_2
    if argument_1 == false
      return true
    else 
      return false
    end
  else
    return false
  end
end

puts xor?(5.even?, 4.even?) # == true
puts xor?(5.odd?, 4.odd?) # == true
puts xor?(5.odd?, 4.even?) # == false
puts xor?(5.even?, 4.odd?) # == false
