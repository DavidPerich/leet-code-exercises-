class Node
  attr_accessor :val, :next

  def initialize(val)
    @val = val
  end
end

class Stack
  attr_reader :size

  def initialize
    @head = Node.new('head')
    @size = 0
  end

  def push(val)
    node = Node.new(val)
    node.next = @head.next
    @head.next = node
    @size += 1
  end

  def pop
    node = @head.next

    if node
      @head.next = node.next
      @size -= 1
    end

    node.val
  end

  def peek
    top_of_stack = @head.next
    top_of_stack ? top_of_stack.val : nil
  end

  private

  attr_reader :structure
end