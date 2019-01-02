# included.rb

def include?(arr, search_value)
  arr.each { |ele| return true if ele == search_value }
  false
end
