# staggered_caps_2.rb

# Modify the method from the previous exercise so it ignores non-alphabetic
# characters when determining whether it should uppercase or lowercase each
# letter. The non-alphabetic characters should still be included in the
# return value; they just don't count when toggling the desired case.

# Understanding:
# Input == string
# Output == string
# Can have a char counter that increases only if char is alpha
# Call capitalize only on even char counts
# Call downcase on uneven char counts
# Or, use boolean method swapping boolean value only if char is alpha

def staggered_case(str)
  new_str = ''
  uppercase = true
  str.each_char do |char|
    if (char =~ /[A-z]/) && uppercase
      new_str << char.upcase
      uppercase = !uppercase
    elsif char =~ /[A-z]/
      new_str << char.downcase
      uppercase = !uppercase
    else
      new_str << char
    end
  end
  new_str
end

# Example:

puts staggered_case('I Love Launch School!')# == 'I lOvE lAuNcH sChOoL!'
puts staggered_case('ALL CAPS')# == 'AlL cApS'
puts staggered_case('ignore 77 the 444 numbers')# == 'IgNoRe 77 ThE 444 nUmBeRs'