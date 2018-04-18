# palindromic_substrings.rb

# Write a method that returns a list of all substrings of a string that
# are palindromic. That is, each substring must consist of the same
# sequence of characters forwards as it does backwards. The return value
# should be arranged in the same sequence as the substrings appear in
# the string. Duplicate palindromes should be included multiple times.

# You may (and should) use the substrings method you wrote in the
# previous exercise.

# For the purposes of this exercise, you should consider all characters
# and pay attention to case; that is, "AbcbA" is a palindrome, but
# neither "Abcba" nor "Abc-bA" are. In addition, assume that single
# characters are not palindromes.

def substrings_at_start(str)
  counter = 0
  string_arr = []
  loop do
    break if counter == str.length
      string_arr << str[0..counter]
    counter += 1
  end
  string_arr
end

def substrings(str1)
  idx = 0
  all_substrings = []
  loop do
    break if idx == str1.length
    all_substrings << substrings_at_start(str1[idx..-1])
    idx += 1
  end
  all_substrings.flatten
end

# Understanding:
# Input, str
# Task, find palindromes
#   Palindrome is a word that's the same forwards and backwards
#   Word is greater than 1 character
#   Iterate over array of all substrings
#   If word is equal to the backwards version of self push to return arr
#   Return array
# Output, array
#   Array contains all palindromes found within a string

def palindromes(str)
  substrings(str).select { |word| word == word.reverse && word.length > 1}
end

# Examples:

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
