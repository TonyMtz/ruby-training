class Node
  attr_accessor :value
  attr_accessor :pointer

  def initialize(value, pointer)
    @value = value
    @pointer = pointer
  end
end
