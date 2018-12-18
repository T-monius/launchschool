# delete_vowels.rb

def remove_vowels(arr)
  arr.map { |str| str.scan(/[^aeiou]/i).join }
end
