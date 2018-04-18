# searching_101.rb

# Write a program that solicits 6 numbers from the user, then prints a
# message that describes whether or not the 6th number appears amongst
# the first 5 numbers.

def valid_int?(int)
  int.to_i.to_s == int
end

ordinals = ['1st', '2nd', '3rd', '4th', '5th', 'last']
answer_ints = []
counter = 0

loop do
  break if counter >= 6
  puts "=> Enter the #{ordinals[counter]} number: "
  answer = gets.chomp
  if valid_int?(answer)
    answer = answer.to_i
    answer_ints << answer
    counter += 1
  else
    puts "Not a valid integer :-("
  end
end

last_num = answer_ints.pop
if answer_ints.include?(last_num)
  puts "The number #{last_num} appears in #{answer_ints}."
else
  puts "The number #{last_num} does not appear in #{answer_ints}."
end
