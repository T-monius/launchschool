# running_totals.rb

def running_total(arr)
  return [] if arr.empty?
  total = 0
  arr.map { |int| total += int }
end
