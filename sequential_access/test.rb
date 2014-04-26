require './sequential_access_structure'
require './my_stack'
require './my_queue'
require 'test/unit'

class TestMyStack < Test::Unit::TestCase

  def setup
    @stack = MyStack.new
  end

  def test_push
    assert_equal(1, @stack.push('foo'))
    assert_equal(2, @stack.push('bar'))
    assert_equal(3, @stack.push('baz'))
    assert_equal(4, @stack.push('qux'))
  end

  def test_pop
    @stack.push('foo')
    @stack.push('bar')
    @stack.push('baz')
    @stack.push('qux')

    assert_equal('qux', @stack.pop().value)
    assert_equal(3, @stack.length)

    assert_equal('baz', @stack.pop().value)
    assert_equal(2, @stack.length)

    assert_equal('bar', @stack.pop().value)
    assert_equal(1, @stack.length)

    assert_equal('foo', @stack.pop().value)
    assert_equal(0, @stack.length)

    assert_equal(nil, @stack.pop())
    assert_equal(0, @stack.length)
    assert_equal(nil, @stack.pop())
    assert_equal(0, @stack.length)
  end

  def test_join
    assert_equal('', @stack.join())
    assert_equal('', @stack.join('-'))

    @stack.push('foo')
    @stack.push('bar')
    @stack.push('baz')

    assert_equal('baz,bar,foo', @stack.join())
    assert_equal('baz-bar-foo', @stack.join('-'))
    assert_equal('baz, bar, foo', @stack.join(', '))
    assert_equal('baz... bar... foo', @stack.join('... '))
  end
end

class TestMyQueue < Test::Unit::TestCase

  def setup
    @queue = MyQueue.new
  end

  def test_enqueue
    assert_equal(1, @queue.enqueue('foo'))
    assert_equal(2, @queue.enqueue('bar'))
    assert_equal(3, @queue.enqueue('baz'))
    assert_equal(4, @queue.enqueue('qux'))
  end

  def test_dequeue
    @queue.enqueue('foo')
    @queue.enqueue('bar')
    @queue.enqueue('baz')
    @queue.enqueue('qux')

    assert_equal('foo', @queue.dequeue().value)
    assert_equal(3, @queue.length)

    assert_equal('bar', @queue.dequeue().value)
    assert_equal(2, @queue.length)

    assert_equal('baz', @queue.dequeue().value)
    assert_equal(1, @queue.length)

    assert_equal('qux', @queue.dequeue().value)
    assert_equal(0, @queue.length)

    assert_equal(nil, @queue.dequeue())
    assert_equal(0, @queue.length)
    assert_equal(nil, @queue.dequeue())
    assert_equal(0, @queue.length)
  end

  def test_join
    assert_equal('', @queue.join())
    assert_equal('', @queue.join('-'))

    @queue.enqueue('foo')
    @queue.enqueue('bar')
    @queue.enqueue('baz')

    assert_equal('foo,bar,baz', @queue.join())
    assert_equal('foo-bar-baz', @queue.join('-'))
    assert_equal('foo, bar, baz', @queue.join(', '))
    assert_equal('foo... bar... baz', @queue.join('... '))
  end
end
