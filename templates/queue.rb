class Queue
  attr_reader :size

  def initialize
    @head = Node.new("head")
    @tail = @head
    @size = 0

  end

  def enqueue(val)
    @tail.next = Node.new(val)
    @tail = @tail.next
    @size += 1
  end

  def dequeue
    node = @head.next

    if node
      @head.next = @head.next.next
      @size -= 1
      return node.val
    end
  end

  def find()
  end

end


class Node
  attr_accessor :val, :next
  def initialize(val)
      @val = val
      @next = nil
  end
end

