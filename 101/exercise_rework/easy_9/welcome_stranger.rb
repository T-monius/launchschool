# welcome_stranger.rb

def greetings(arr, hsh)
  first_name = arr[0]
  middle_initial = arr[1]
  last_name = arr[2]
  title = hsh[:title]
  occupation = hsh[:occupation]

  "Hello, #{first_name} #{middle_initial} #{last_name}! Nice to have" \
  " a #{title} #{occupation} around."
end
