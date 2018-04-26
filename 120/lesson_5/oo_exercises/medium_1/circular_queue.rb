# circular_queue.rb

# Your task is to write a CircularQueue class that implements a
# circular queue for arbitrary objects. The class should obtain the
# buffer size with an argument provided to CircularQueue::new, and
# should provide the following methods:

# enqueue to add an object to the queue
# dequeue to remove (and return) the oldest object in the queue. It should return nil if the queue is empty.

# You may assume that none of the values stored in the queue are nil 
# however, nil may be used to designate empty spots in the buffer).

class FixedArray
  attr_reader :fixed_array

  def initialize(int)
    @fixed_array = [nil] * int
  end

  def [](idx)
    fixed_array.fetch(idx)
  end

  def []=(idx, object)
    fixed_array[idx] = object
  end

  def to_a
    fixed_array.clone
  end

  def to_s
    to_a.to_s
  end
end

class QueueObject
  attr_accessor :value, :time

  def initialize(value)
    self.value = value
    self.time = Time.new
  end

  def to_s
    "I'm the queue value #{value}. Made at #{time}."
  end
end

class CircularQueue
  def initialize(int)
    @buffer = FixedArray.new(int)
    @max_idx = int - 1
  end

  def buffer_empty?
    buffer.to_a.all? { |el| el.nil? }
  end

  def buffer_full?
    buffer.to_a.none? { |el| el.nil? }
  end

  def time_sort
    times_arr = buffer.to_a.select { |object| !object.nil? }
    times_arr.sort_by { |object| object.time }
  end

  def find_oldest
    times_arr = time_sort
    buffer.to_a.find_index(times_arr[0])
  end

  def find_newest
    times_arr = time_sort
    buffer.to_a.find_index(times_arr[-1])
  end

  def next_position(idx)
    following_idx = idx + 1
    return 0 if following_idx > max_idx
    following_idx
  end

  def add_object(slot, value)
    buffer[slot] = QueueObject.new(value)
  end

  def enqueue(value)
    if buffer_empty?
      add_object(0, value)
    elsif buffer_full?
      idx = find_oldest
      add_object(idx, value)
    else
      idx = find_newest
      new_slot = next_position(idx)
      add_object(new_slot, value)
    end
  end

  def remove_oldest(idx)
    buffer[idx] = nil
  end

  def dequeue
    if buffer_empty?
      nil
    else
      idx = find_oldest
      oldest_object = buffer[idx]
      remove_oldest(idx)
      oldest_object.value
    end
  end

  def to_a
    buffer.clone
  end

  def to_s
    to_a.to_s
  end

  private
  attr_reader :buffer, :max_idx
end

# Examples:

queue = CircularQueue.new(3)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2

queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil

queue = CircularQueue.new(4)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2

queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
puts queue.dequeue == 4
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil

# The above code should display true 15 times.
