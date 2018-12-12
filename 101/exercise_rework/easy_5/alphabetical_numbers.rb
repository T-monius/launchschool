# alphabetical_numbers.rb

ENGLISH_WORDS_FOR_INTEGERS = { 1 => 'one', 2 => 'two', 3 => 'three',
                               4 => 'four', 5 => 'five', 6 => 'six',
                               7 => 'seven', 8 => 'eight', 9 => 'nine',
                               10 => 'ten', 11 => 'eleven', 12 => 'twelve',
                               13 => 'thirteen', 14 => 'fourteen',
                               15 => 'fifteen', 16 => 'sixteen',
                               17 => 'seventeen', 18 => 'eighteen',
                               19 => 'nineteen', 0 => 'zero' }

def alphabetic_number_sort(arr)
  arr.sort_by { |int| ENGLISH_WORDS_FOR_INTEGERS[int] }
end

p alphabetic_number_sort((0..19).to_a)
