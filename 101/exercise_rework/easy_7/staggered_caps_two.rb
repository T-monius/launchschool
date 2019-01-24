# staggered_caps_two.rb
require 'pry'

def staggered_case(str)
  should_capitalize = true
  staggered = ''

  str.each_char do |char|
    # binding.pry
    if char.match?(/[a-z]/i)
      staggered << char.upcase if should_capitalize
      staggered << char.downcase unless should_capitalize
      should_capitalize = !should_capitalize
    else
      staggered << char
    end
  end
  staggered
end

p staggered_case('I Love Launch School!')
