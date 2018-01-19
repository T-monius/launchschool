# matching_parentheses.rb

# Write a method that takes a string as argument, and returns true if
# all parentheses in the string are properly balanced, false otherwise.
# To be properly balanced, parentheses must occur in matching '(' and
# ')' pairs.

# Understanding:
# A balanced string has '(' ')' that occur evenly.
# '(' before ')' and never alone
# Different search methods return different results
# Can't say always odd or even number
# Search char by char and compare rest of string for ')' if '(' found?
# Can use count to tell me if the number for '(' and ')' match but doesn't
# work for order.
# Go through the string and count '('s and ')'s.
#   If the count for ')'s ever exceeds ')'s, then it's not balanced.

=begin
def in_order?(str)
  par = 0
  par1 = 0
  counter = 0
  loop do
    break if str.size == counter

    if str[counter] == '('
      par += 1
    elsif str[counter] == ')'
      par1 == 0
    end
    return false if par1 > par
    counter += 1
  end
  true if par == par1
end

def proper_count?(str)
  par = str.count('(')
  par1 = str.count(')')
  par == par1
end
=end

def balanced?(str)
  par = 0
  par1 = 0
  counter = 0
  loop do
    break if str.size == counter

    if str[counter] == '('
      par += 1
    elsif str[counter] == ')'
      par1 += 1
    end
    return false if par1 > par
    counter += 1
  end
  par == par1 ? true : false
end

# Examples:

puts balanced?('What (is) this?') == true
puts balanced?('What is) this?') == false
puts balanced?('What (is this?') == false
puts balanced?('((What) (is this))?') == true
puts balanced?('((What)) (is this))?') == false
puts balanced?('Hey!') == true
puts balanced?(')Hey!(') == false
puts balanced?('What ((is))) up(') == false
# Note that balanced pairs must each start with a (, not a ).
