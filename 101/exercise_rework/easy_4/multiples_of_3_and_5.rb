# multiples_of_3_and_5.rb

def multisum(int)
  (1..int).select { |num| (num % 3).zero? || (num % 5).zero? }
          .sum
end
