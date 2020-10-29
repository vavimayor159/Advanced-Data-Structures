# frozen_string_literal: true

class Queve
  class QueueOutOfSpaceError < StandardError; end

  attr_accessor :base, :size

  def initialize(size)
    @size = size
    @base = []
  end

  def queue(element)
    raise QueueOutOfSpaceError unless @base.size < size

    @base << element
  end

  def dequeue
    @base.shift
  end

  def top
    @base[0]
  end

  def empty?
    top.zero?
  end
end
