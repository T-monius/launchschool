# palindromic_substrings.rb

def substrings_at_start(str, idx=0, substrings=[])
  return substrings if idx >= str.length

  substrings << str.slice(0..idx)
  substrings_at_start(str, idx + 1, substrings)
end

def substrings(str)
  all_substrings = []
  str.each_char.with_index do |_, idx|
    all_substrings << substrings_at_start(str.slice(idx..-1))
  end
  all_substrings.flatten
end

def palindromes(str)
  
end
