# bannerizer.rb

def outer(lng)
  "+-#{'-' * lng}-+"
end

def inner(lng, contents)
  return "| #{contents} |" unless contents.empty?
  "| #{' ' * lng} |"
end

def build_box(str)
  content_length = str.length
  box = ''
  box << outer(content_length) + "\n"
  box << inner(content_length, '') + "\n"
  box << inner(content_length, str) + "\n"
  box << inner(content_length, '') + "\n"
  box << outer(content_length)
end

def print_in_box(str)
  puts build_box(str)
end

print_in_box('To boldly go where no one has gone before.')
