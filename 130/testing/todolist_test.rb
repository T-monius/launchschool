# todolist_test.rb

require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use!

require_relative 'todo_list.rb'

class TodoListTest < MiniTest::Test

  def setup
    @todo1 = Todo.new("Buy milk")
    @todo2 = Todo.new("Clean room")
    @todo3 = Todo.new("Go to gym")
    @todos = [@todo1, @todo2, @todo3]

    @list = TodoList.new("Today's Todos")
    @list.add(@todo1)
    @list.add(@todo2)
    @list.add(@todo3)
  end

  # Your tests go here. Remember they must start with "test_"
  def test_to_a
    assert_equal(@todos, @list.to_a)
  end

  def test_size
    assert_equal(3, @list.size)
  end

  def test_first
    assert_equal(@todo1, @list.first)
  end

  def test_last
    assert_equal(@todo3, @list.last)
  end

  def test_shift
    todo = @list.shift
    assert_equal(@todo1, todo)
    assert_equal([@todo2, @todo3], @list.to_a)
  end

  def test_pop
    todo = @list.pop
    assert_equal(@todo3, todo)
    assert_equal([@todo1, @todo2], @list.to_a)
  end

  def test_done?
    assert_equal(false, @list.done?)
  end

  def test_raise_type_error
    assert_raises(TypeError) do
      @list.add('Run')
    end
    assert_raises(TypeError) do
      @list.add(2)
    end
  end

  def test_shovel_operator
    new_todo = Todo.new('Run')
    @list << new_todo
    assert_equal([@todo1, @todo2, @todo3, new_todo], @list.to_a)
  end

  def test_add
    new_todo = Todo.new('Run')
    @list.add(new_todo)
    assert_equal([@todo1, @todo2, @todo3, new_todo], @list.to_a)
  end

  def test_item_at
    assert_equal(@todo1, @list.item_at(0))
    assert_equal(@todo2, @list.item_at(1))
    assert_raises(IndexError) do
      @list.item_at(4)
    end
    assert_raises(IndexError) do
      @list.item_at(100)
    end
  end

  def test_mark_done_at
    @list.mark_done_at(1)
    assert_equal(true, @list.item_at(1).done?)
    assert_equal(true,@todo2.done?)
    assert_equal(false, @todo3.done?)
    assert_raises(IndexError) do
      @list.mark_done_at(900)
    end
  end

  def test_mark_undone_at
    assert_raises(IndexError) { @list.mark_undone_at(100) }
    @todo1.done!
    @todo2.done!
    @todo3.done!

    @list.mark_undone_at(1)

    assert_equal(true, @todo1.done?)
    assert_equal(false, @todo2.done?)
    assert_equal(true, @todo3.done?)
  end

  def test_done!
    @list.done!
    assert_equal(true, @todo1.done?)
    assert_equal(true, @todo2.done?)
    assert_equal(true, @todo3.done?)
    assert_equal(true, @list.done?)
  end

  def test_remove_at
    assert_raises(IndexError) do
      @list.remove_at(20)
    end

    item_removed = @list.remove_at(1)
    assert_equal(@todo2, item_removed)
    assert_equal([@todo1, @todo3], @list.to_a)
  end

  def test_to_s
    output = <<-OUTPUT.chomp.gsub /^\s+/, ""
    ---- Today's Todos ----
    [ ] Buy milk
    [ ] Clean room
    [ ] Go to gym
    OUTPUT

    assert_equal(output, @list.to_s)
  end

  def test_to_s1
    output = <<~OUTPUT.chomp
    ---- Today's Todos ----
    [ ] Buy milk
    [X] Clean room
    [ ] Go to gym
    OUTPUT

    @todo2.done!

    assert_equal(output, @list.to_s)
  end

  def test_to_s2
    output = <<~OUTPUT.chomp
    ---- Today's Todos ----
    [X] Buy milk
    [X] Clean room
    [X] Go to gym
    OUTPUT

    @list.mark_all_done

    assert_equal(output, @list.to_s)
  end

  def test_each_iteration
    arr = []
    @list.each { |todo| arr << todo }

    assert_equal([@todo1, @todo2, @todo3], arr)
  end

  def test_each_return
    return_value = @list.each { |_| 'Who cares?' }

    assert_equal(@list, return_value)
  end

  def test_select_return
    return_value = @list.select { |_| true }

    assert_equal(TodoList, return_value.class)
  end

  def test_select_effectiveness
    todo = @list.select { |todo| todo == @todo1 }.pop

    assert_equal(@todo1, todo)
  end
end
