# number_palindrome.rb

# Understanding:
# Test to see if a number is palindromic
# Should I verify the number?
# Ints only?

# Approach:
#   - Break the number into a digits array
#     + Can use `digits`
#     + Can break the number down through ten division
#       > An integer is the sum of base 10 math
#       > From the right to the left, each digit is a power of
#         10 greater than the digit at its right.
#       > Iterate
#         = Stop iteration if number is 0
#         = Divide a number by ten
#         = Preserve the remainder
#           - push to return array
#         = Preserve the result (as number over which iterating)
#   - Compare the array to it's reversed self.

def palindromic_number?(num)
  num.digits == num.digits.reverse
end

def personal_digits(num)
  digs = []
  loop do
    break if num == 0

    remainder = num % 10
    digs << remainder
    num /= 10
  end
  digs
end

def palindromic_number1?(num)
  personal_digits(num) == personal_digits(num).reverse
end

puts palindromic_number1?(34543)
puts palindromic_number?(34543)
puts palindromic_number?(34543) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true
