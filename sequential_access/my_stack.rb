require './sequential_access_structure'

# A stack is a container of objects that are inserted and removed
# according to the last-in first-out (LIFO) principle.

class MyStack < SequentialAccessStructure

  # Removes the first element and returns that element.
  def pop
    extract_first()
  end

  # Adds one element on the top and returns the new length of the stack.
  def push(name)
    @start = Node.new(name, @start)
    return @length += 1
  end
end
