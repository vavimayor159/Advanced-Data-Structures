# frozen_string_literal: true
class Stack
  class StackOutOfSpaceError < StandardError; end

  attr_accessor :base, :top_element, :size

  def initialize(size)
    @size = size
    @top_element = 0
    @base = []
  end

  def push(element)
    raise StackOutOfSpaceError unless @base.size < size

    @top_element += 1
    @base << element
  end

  def pop
    @top_element -= 1
    @base.pop
  end

  def top
    @base[@top_element - 1]
  end

  def empty?
    @top_element.zero?
  end
end
