# staggered_caps_1_fe.rb

# Further Exploration:
# Modify this method so the caller can request that the first character be
# downcased rather than upcased? If the first character is downcased, then
# the second character should be upcased, and so on.

# Understanding:
# In order to allow the caller to modify whether the altering between cases
# starts with upper or lower case, we'd simply have to be able to modify
# the _need_upper_ variable. 
# Taking a second argument which is set as true or false should do it.

def staggered_case(string, need_upper= true)
  result = ''
  need_upper
  string.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper
  end
  result
end

puts staggered_case('I Love Launch School!', false)
puts staggered_case('ALL_CAPS', false)
puts staggered_case('ignore 77 the 444 numbers', true)
