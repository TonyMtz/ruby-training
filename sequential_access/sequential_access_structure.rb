require './node'

class SequentialAccessStructure
  attr_accessor :length

  def initialize()
    @length = 0
    @start = nil
  end

  # Removes the very first element and returns that element.
  def extract_first()
    _pointer = @start
    @start = @start.pointer if @start
    @length = @length > 1 ? @length - 1 : 0
    return _pointer
  end

  # Joins all elements of an array into a string.
  def join(separator = ',')
    if @start.nil?
      return ''
    end
    _pointer = @start
    _buffer = _pointer.value
    while !_pointer.pointer.nil?
      _pointer = _pointer.pointer
      _buffer += separator + _pointer.value
    end
    return _buffer
  end

  # each item
  def each(fn)
    nail = @start
    while nail.nil?
      fn.call(nail.value)
      nail = nail.pointer
    end
  end
end
