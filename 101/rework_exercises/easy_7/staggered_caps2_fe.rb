# staggered_caps2_fe.rb

# Modify the method from the previous exercise so it ignores
# non-alphabetic characters when determining whether it should
# uppercase or lowercase each letter. The non-alphabetic characters
# should still be included in the return value; they just don't count
# when toggling the desired case.

# Further Exploration
# Modify this method so the caller can determine whether non-alphabetic
# characters should be counted when determining the upper/lowercase
# state. That is, you want a method that can perform the same actions
# that this method does, or operates like the previous version.

# Understanding:
# 

def count_all(str)
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

def only_alphas(string)
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

def staggered_case(string, keyword='alphas')
  if keyword == 'alphas'
    only_alphas(string)
  else
    count_all(string)
  end
end

puts staggered_case('I Love Launch School!', 'alphas') == 'I lOvE lAuNcH sChOoL!'
puts staggered_case('ALL CAPS', 'all') == 'AlL CaPs'
puts staggered_case('ignore 77 the 444 numbers', 'all') == 'IgNoRe 77 ThE 444 NuMbErS'
