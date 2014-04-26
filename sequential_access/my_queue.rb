require './sequential_access_structure'

# A queue is a container of objects (a linear collection) that are inserted and removed
# according to the first-in first-out (FIFO) principle.

class MyQueue < SequentialAccessStructure

  # Removes the first element and returns that element.
  def dequeue
    extract_first()
  end

  # Adds one element to the end and returns the new length of the queue.
  def enqueue(name)
    _new_node = Node.new(name, nil)

    if @start.nil?
      @start = _new_node
    else
      _pointer = @start
      while !_pointer.pointer.nil?
        _pointer = _pointer.pointer
      end
      _pointer.pointer = _new_node
    end

    return @length += 1
  end
end
