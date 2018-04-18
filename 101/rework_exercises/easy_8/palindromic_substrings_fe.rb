# palindromic_substrings_fe.rb

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

# Further Exploration
# Can you modify this method (and/or its predecessors) to ignore non-
# alphanumeric characters and case?

# Understanding:
# A string that has non-alpha characters not a palindrome.
# Caps don't affect palindrome testing.

def palindrome?(w)
  w == w.reverse && w.length > 1
end

def palindromes(str)
  substrings(str).select do |word|
    palindrome?(word.downcase) && word.count('^A-Za-z') == 0
  end
end

# Examples:

p palindromes('abcd') == []
p palindromes('Madam') == ['Madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', 'madam', 'ada', 'did', 'madam', 'ada', 'oo']
p palindromes('kNitting cassettes') == [
  'Nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]