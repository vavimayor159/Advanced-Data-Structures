class Stack
  class StackOutOfSpaceError < StandardError; end

  attr_accessor :base, :top, :size

  def initialize(size)
    @size = size
    @top = 0
    @base = []
  end

  def push(element)
    raise StackOutOfSpaceError unless @base.size < size

    @top += 1
    @base << element
  end

  def pop
    @top -= 1
    @base.pop
  end

  def top_element
    @base[top]
  end

  def empty?
    base == top
  end
end
