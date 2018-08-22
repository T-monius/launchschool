# encrypted_pioneers.rb

# Understanding:
# Input,
#   - List?
#   - A chunk of code?
#     > Split by \m?
#   - Strings
#     > encrypted
# Task
#   - Decrypt the names one by one 
# Output
#   - Decrypted names
#   - Print in a list?
#   - Print one by one?

# Approach:
#   - Save the current text in a file
#   - Read the file in
#   - Split the decryptions into an array
#   - Iterate over the array of decriptions
#     > Decrypt
#       + Rot13
#       + Split string
#       + Iterate over the characters array
#       + Swap character for the ROT13 pair
#       + Return joined version of new characters
#     > Return a new array
def make_rot13
  rot13 = Hash.new(0)
  pair = 'n'
  ('a'..'m').each do |char|
    rot13[char] = pair
    pair = pair.next
  end
  pair = 'a'
  ('n'..'z').each do |char|
    rot13[char] = pair
    pair = pair.next
  end
  rot13
end

encryptions = File.read('rot_13_names.txt').split("\n")

def rot13(string)
  rot13 = make_rot13
  string.chars.map { |char| rot13.has_key?(char) ? rot13[char] : ' ' }.join
end

names = encryptions.map { |encryption| rot13(encryption.downcase) }
names = names.map { |name| name.split(' ').map(&:capitalize!).join(' ') }
names.each { |name| puts name }
