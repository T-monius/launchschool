# problem_6_2.rb

# Find the index of the first name that starts with "Be"

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

def find_be(array)
  counter = 0

  loop do
    return 'Ooops' if counter == array.length

    if array[counter][0..1] == 'Be'
      break
    end

    counter += 1
  end
  counter
end

find_be(flintstones)
