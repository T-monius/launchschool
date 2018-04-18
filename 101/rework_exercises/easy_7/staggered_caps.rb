# staggered_caps.rb

# Write a method that takes a String as an argument, and returns a new
# String that contains the original value using a staggered
# capitalization scheme in which every other character is capitalized,
# and the remaining characters are lowercase. Characters that are not
# letters should not be changed, but count as characters when
# switching between upper and lowercase.

# Understanding:
# Input, string
#   Transformation
#   Every other character in string affected
#   Idx[0] capital/ All evens capital
#   All odds downcase
# Output, string

def staggered_case(str)
  new_str = ''
  idx = 0
  loop do
    break if idx == str.length

    new_str << str[idx].upcase if idx.even?
    new_str << str[idx].downcase if idx.odd?

    idx += 1
  end
  new_str
end

def staggered_case1(str)
  str.chars.map.with_index { |char, i| i.even? ? char.upcase : char.downcase }.join
end

# Example:

puts staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
puts staggered_case('ALL_CAPS') == 'AlL_CaPs'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

puts staggered_case1('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
puts staggered_case1('ALL_CAPS') == 'AlL_CaPs'
puts staggered_case1('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
