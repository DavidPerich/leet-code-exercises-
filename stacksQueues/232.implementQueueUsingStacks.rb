=begin
Implement the following operations of a queue using stacks.

push(x) -- Push element x to the back of queue.
pop() -- Removes the element from in front of queue.
peek() -- Get the front element.
empty() -- Return whether the queue is empty.
Example:

MyQueue queue = new MyQueue();

queue.push(1);
queue.push(2);
queue.peek();  // returns 1
queue.pop();   // returns 1
queue.empty(); // returns false
Notes:

You must use only standard operations of a stack -- which means only push to top, peek/pop from top, size, and is empty operations are valid.
Depending on your language, stack may not be supported natively. You may simulate a stack by using a list or deque (double-ended queue), as long as you use only standard operations of a stack.
You may assume that all operations are valid (for example, no pop or peek operations will be called on an empty queue).
=end
require 'pry'

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
      return node.val
    end
  end

  def peek
    top_of_stack = @head.next
    top_of_stack ? top_of_stack.val : nil
  end

  private

  attr_reader :structure
end

class MyQueue
  def initialize()
    @stack1 = Stack.new()
    @stack2 = Stack.new()
  end


  def push(x)
    @stack1.push(x)
  end

  def pop()
    if @stack2.peek().nil?
      dump()
    end
    return @stack2.pop
  end

  def peek()
    dump() if @stack2.peek().nil?

    return @stack2.peek()
  end


  def empty()
    return @stack2.peek().nil? && @stack1.peek().nil?
  end

  private

  def dump()
   node = @stack1.pop

    while node
      @stack2.push(node)
      node = @stack1.pop
    end
  end
end

queue = MyQueue.new

queue.push(1);
queue.push(2);
p queue.peek();  # returns 1
p queue.pop();   # returns 1
p queue.empty(); # returns false