# sieve.rb

class Sieve
  attr_reader :limit, :numbers, :primes

  def initialize(limit)
    @limit = limit
    @numbers = []
    2.upto(limit) { |num| @numbers << [num, ''] }
    mark_composites
    @primes = find_primes
  end

  def mark_composites
    current_prime = 2
    while current_prime
      mark_multiples(current_prime)
      next_prime = find_next_prime(current_prime)
      current_prime = next_prime
    end
  end

  def mark_multiples(prime)
    multiplier = 2
    multiple = prime * multiplier
    until multiple > limit
      numbers.assoc(multiple).pop
      numbers.assoc(multiple).push('X')
      multiplier += 1
      multiple = prime * multiplier
    end
  end

  def find_next_prime(current_prime)
    modified_list = numbers.select do |num, mark|
      num > current_prime && mark == ''
    end
    return false if modified_list.empty?
    modified_list.first.first
  end

  def find_primes
    prime_list = numbers.select { |_, mark| mark == '' }
    prime_list.map(&:first)
  end
end
