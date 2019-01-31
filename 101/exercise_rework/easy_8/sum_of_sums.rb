# sum_of_sums.rb

def sum_of_sums(arr)
  max_index = arr.length - 1
  subsets = []
  arr.each_with_index do |_, idx|
    subsets << arr.take(idx + 1)
  end
  subsets.map(&:sum).sum
end
