# name_swapping.rb

def swap_name(full_name)
  first_name = full_name.match(/\w* /)
  last_name = full_name.match(/ \w*/)
  "#{last_name}, #{first_name}"
end
