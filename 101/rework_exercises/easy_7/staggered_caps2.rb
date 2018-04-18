# staggered_caps2.rb

# Modify the method from the previous exercise so it ignores
# non-alphabetic characters when determining whether it should
# uppercase or lowercase each letter. The non-alphabetic characters
# should still be included in the return value; they just don't count
# when toggling the desired case.

# Understanding:
# Stagger letter cases based on alphabetic character count in string
# not index

# Algorithm:
# Can carry a separate alpha character variable in addition to index
# Or, with LS approach only toggle flag if character was alphabetic
#   Push the character without toggling flag if not alphabetic
#   Push modified character and flip flag if alphabetic

def staggered_case(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if ('a'..'z').include?(char.downcase)
      if need_upper
        result += char.upcase
      else
        result += char.downcase
      end
      need_upper = !need_upper
    else
      result += char
    end
  end
  result
end

# def staggered_case(str)
#   new_str = ''
#   idx = 0
#   loop do
#     break if idx == str.length

#     new_str << str[idx].upcase if idx.even?
#     new_str << str[idx].downcase if idx.odd?

#     idx += 1
#   end
#   new_str
# end

# def staggered_case(str)
  
# end

# Example:

puts staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
puts staggered_case('ALL CAPS') == 'AlL cApS'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'