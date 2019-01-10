# swap_case.rb

def swapcase(str)
  str.each_char.with_object('') do |char, new_str|
    if ('a'..'z').cover?(char)
      new_str << char.upcase
    else 
      new_str << char.downcase
    end
  end
end
