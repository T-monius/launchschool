# ls_todo_list1.rb

# This class represents a todo item and its associated
# data: name and description. There's also a "done"
# flag to show whether this todo item is done.

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

# This class represents a collection of Todo objects.
# You can perform typical collection-oriented actions
# on a TodoList object, including iteration and selection.

class TodoList
  attr_accessor :title

  def initialize(title)
    @title = title
    @todos = []
  end

  def each
    counter = 0
    while counter < size
      yield(@todos[counter])
      counter += 1
    end
    self
  end

  def select
    counter = 0
    selection = TodoList.new(title)
    while counter < size
      selection << @todos[counter] if yield(@todos[counter])
      counter += 1
    end

    selection
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

  def shift
    @todos.shift
  end

  def pop
    @todos.pop
  end

  def done?
    @todos.all? { |todo| todo.done? }
  end

  def <<(todo)
    raise TypeError, 'can only add Todo objects' unless todo.instance_of? Todo

    @todos << todo
  end
  alias_method :add, :<<

  def item_at(idx)
    @todos.fetch(idx)
  end

  def mark_done_at(idx)
    item_at(idx).done!
  end

  def mark_undone_at(idx)
    item_at(idx).undone!
  end

  def done!
    @todos.each_index do |idx|
      mark_done_at(idx)
    end
  end

  def remove_at(idx)
    @todos.delete(item_at(idx))
  end

  def to_s
    text = "---- #{title} ----\n"
    text << @todos.map(&:to_s).join("\n")
    text
  end

  def to_a
    @todos
  end

  def find_by_title(str)
    selection = nil
    each do |todo|
      if todo.title == str || todo.description == str
        selection = todo
        break
      end
    end
    selection
  end

  def all_done
    new_list = TodoList.new(title)
    each do |todo|
      new_list << todo if todo.done?
    end
    new_list
  end

  def all_not_done
    new_list = TodoList.new(title)
    each do |todo|
      new_list << todo if !todo.done?
    end
    new_list
  end

  def mark_done(criteria)
    each do |todo|
      if todo.title == criteria || todo.description == criteria
        todo.done!
        break
      end
    end
    nil
  end

  def mark_all_done
    each do |todo|
      todo.done!
    end
    nil
  end

  def mark_all_undone
    each do |todo|
      todo.undone!
    end
    nil
  end
end

todo1 = Todo.new("Buy milk")
todo2 = Todo.new("Clean room", 'Rick\'s insistent about this')
todo3 = Todo.new("Go to gym")
todo4 = Todo.new('Buy boxer shorts', 'Rick\'s insistent about this')

list = TodoList.new("Today's Todos")
list.add(todo1)
list.add(todo2)
list.add(todo3)
list.add(todo4)

# mark_all_done && mark_all_undone tests
list.mark_all_done
puts list
list.mark_all_undone
puts list

=begin
# mark_done
list.mark_done('Rick\'s insistent about this')
puts list

# all_done && all_not_done tests

list.mark_done_at(1)
list.mark_done_at(2)

puts list.all_not_done

# find_by_title tests
todo1 = Todo.new("Buy milk", 'Rick\'s insistent about this')
todo2 = Todo.new("Clean room", 'Rick\'s insistent about this')
todo3 = Todo.new("Go to gym")

list = TodoList.new("Today's Todos")
list.add(todo1)
list.add(todo2)
list.add(todo3)

puts list.find_by_title("Buy boxer shorts")

#each tests
todo1 = Todo.new("Buy milk")
todo2 = Todo.new("Clean room")
todo3 = Todo.new("Go to gym")

list = TodoList.new("Today's Todos")
list.add(todo1)
list.add(todo2)
list.add(todo3)

value = list.each do |todo|
  puts todo                   # calls Todo#to_s
end

# #select tests
todo1 = Todo.new("Buy milk")
todo2 = Todo.new("Clean room")
todo3 = Todo.new("Go to gym")

list = TodoList.new("Today's Todos")
list.add(todo1)
list.add(todo2)
list.add(todo3)

todo1.done!

results = list.select { |todo| todo.done? }    # you need to implement this method

puts results.inspect
=end
