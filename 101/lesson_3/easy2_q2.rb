# easy2_q2.rb

munsters_description = "The Munsters are creepy in a good way."

# Convert the string in the following ways (code will be executed on
# original munsters_description above):


#"The munsters are creepy in a good way."
munsters_description = munsters_description.split
munsters_description.map! do |element| 
  if element == 'Munsters'
    element.downcase
  else
    element
  end
end
puts munsters_description.join(' ')

munsters_description = "The Munsters are creepy in a good way."
# "tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
munsters_description.swapcase!
puts munsters_description

# "the munsters are creepy in a good way."
munsters_description.downcase!
puts munsters_description

# "THE MUNSTERS ARE CREEPY IN A GOOD WAY."
munsters_description.upcase!
puts munsters_description
