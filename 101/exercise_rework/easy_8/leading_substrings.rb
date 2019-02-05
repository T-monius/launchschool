# leading_substrings.rb

def substrings_at_start(str, idx=0, substrings=[])
  return substrings if idx >= str.length

  substrings << str.slice(0..idx)
  substrings_at_start(str, idx + 1, substrings)
end
