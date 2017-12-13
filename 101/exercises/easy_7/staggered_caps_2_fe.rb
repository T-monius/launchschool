# staggered_caps_2_fe.rb

# Further Exploration:
# Modify this method so the caller can determine whether non-alphabetic
# characters should be counted when determining the upper/lowercase state.
# That is, you want a method that can perform the same actions that this
# method does, or operates like the previous version.

def staggered_case(str, count_non_alphas=true)
  new_str = ''
  uppercase = true
  str.each_char do |char|
    if count_non_alphas
      if (char =~ /[A-z]/) && uppercase
        new_str << char.upcase
        uppercase = !uppercase
      elsif char =~ /[A-z]/
        new_str << char.downcase
        uppercase = !uppercase
      else
        new_str << char
      end
    else
      if uppercase
        new_str << char.upcase
      else
        new_str << char.downcase
      end
      uppercase = !uppercase
    end
  end
  new_str
end

# Example:

puts staggered_case('I Love Launch School!', false)
puts staggered_case('ALL CAPS', false)
puts staggered_case('ignore 77 the 444 numbers', false)
