## Fix the Program - Books (Part 1)

### Understanding
- The `to_s` method could be fixed with refernecing the instance variables directly
- The reference to getters outside of the class require those getters exist

### Task
Complete this program so that it produces the expected output:

```ruby
class Book
  def initialize(author, title)
    @author = author
    @title = title
  end

  def to_s
    %("#{title}", by #{author})
  end
end

book = Book.new("Neil Stephenson", "Snow Crash")
puts %(The author of "#{book.title}" is #{book.author}.)
puts %(book = #{book}.)
```

Expected output:

The author of "Snow Crash" is Neil Stephenson.
book = "Snow Crash", by Neil Stephenson.

### Implementation
- Create getters for `title` and `author` variables
  + This solves the `to_s` reference issue
  + Solves the references to the variables outside of the class in the main scope of the program
