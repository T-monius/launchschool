# todo_list1.rb

class Todo
  DONE_MARKER = 'X'
  UNDONE_MARKER = ' '

  attr_accessor :title, :description, :done

  def initialize(title, description='')
    @title = title
    @description = description
    @done = false
  end

  def done!
    self.done = true
  end

  def done?
    done
  end

  def undone!
    self.done = false
  end

  def to_s
    "[#{done? ? DONE_MARKER : UNDONE_MARKER}] #{title}"
  end
end

class TodoList
  attr_accessor :title

  def initialize(title)
    @title = title
    @todos = []
  end

  # rest of class needs implementation
  def add(item)
    raise TypeError, 'Can only add Todo objects' if item.class != Todo
    @todos << item
  end

  def <<(item)
    add(item)
  end

  def size
    @todos.size
  end

  def first
    @todos.first
  end

  def last
    @todos.last
  end

  def item_at(item)
    @todos.fetch(item)
  end

  def mark_done_at(position)
    item = @todos.fetch(position)
    item.done!
  end

  def mark_undone_at(position)
    item = @todos.fetch(position)
    item.undone!
  end

  def shift
    @todos.shift
  end

  def pop
    @todos.pop
  end

  def remove_at(position)
    @todos.fetch(position)
    @todos.delete_at(position)
  end

  def to_s
    "# ---- Today's Todos ----\n" \
    "#{@todos.join("\n")}"
  end
end

# Implement the rest of the TodoList so that we can write this
# code:

# given
todo1 = Todo.new("Buy milk")
todo2 = Todo.new("Clean room")
todo3 = Todo.new("Go to gym")
list = TodoList.new("Today's Todos")

# ---- Adding to the list -----
# add

list.add(todo1)                 # adds todo1 to end of list, returns list
list.add(todo2)                 # adds todo2 to end of list, returns list
list.add(todo3)                 # adds todo3 to end of list, returns list
=begin
begin
  list.add(1)                     # raises TypeError with message "Can only add Todo objects"
rescue TypeError => e
  p e
end

# <<
# same behavior as add

# ---- Interrogating the list -----

# size
p list.size                       # returns 3


# first
puts list.first                      # returns todo1, which is the first item in the list

# last
puts list.last                       # returns todo3, which is the last item in the list

# ---- Retrieving an item in the list ----

# item_at

begin
  list.item_at                    # raises ArgumentError
rescue ArgumentError => e
  p e
end
puts list.item_at(1)                 # returns 2nd item in list (zero based index)
begin
  list.item_at(100)               # raises IndexError
rescue IndexError => e
  p e
end

# ---- Marking items in the list -----

# mark_done_at

begin
  list.mark_done_at               # raises ArgumentError
rescue ArgumentError => e
  p e
end
=end
list.mark_done_at(1)            # marks the 2nd item as done
=begin
puts list.item_at(1)

begin
  list.mark_done_at(100)          # raises IndexError
rescue IndexError => e
  p e
end

# mark_undone_at

begin
  list.mark_undone_at             # raises ArgumentError
rescue ArgumentError => e
  p e
end

list.mark_undone_at(1)          # marks the 2nd item as not done,
puts list.item_at(1)

begin
  list.mark_undone_at(100)        # raises IndexError
rescue IndexError => e
  p e
end
# ---- Deleting from the the list -----

# shift
#puts list.shift                      # removes and returns the first item in list

# pop
#puts list.pop                        # removes and returns the last item in list

# remove_at
begin
  list.remove_at                  # raises ArgumentError
rescue ArgumentError => e
  p e
end

puts list.remove_at(1)               # removes and returns the 2nd item

begin
  list.remove_at(100)             # raises IndexError
rescue IndexError => e
  p e
end
=end
# ---- Outputting the list -----

# to_s

puts list                      # returns string representation of the list

# ---- Today's Todos ----
# [ ] Buy milk
# [ ] Clean room
# [ ] Go to gym

# or, if any todos are done

# ---- Today's Todos ----
# [ ] Buy milk
# [X] Clean room
# [ ] Go to gym
