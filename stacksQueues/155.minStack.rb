# Design a stack that supports push, pop, top, and retrieving the minimum element in constant time.

# push(x) -- Push element x onto stack.
# pop() -- Removes the element on top of the stack.
# top() -- Get the top element.
# getMin() -- Retrieve the minimum element in the stack.


# Example:

=begin
two stacks - one to keep track of all values. One to keep history of min value.

=end

class Node
  attr_accessor :val, :next

  def initialize(val)
    @val = val
  end
end

class MinStack
  def initialize
    @all = Node.new("head")
    @min = Node.new("head")
  end

  def push(x)
    node = Node.new(x)
    # adding the new node to all stack

    node.next = @all.next
    @all.next = node

    # add a replica node to to min stack if greater than or equal to min.
    if !@min.next || @min.next.val > x
      min_node = Node.new(x)
      min_node.next = @min.next
      @min.next = min_node
    end
  end

  def pop()
    node = @all.next

    if node # don't do anything if node dooesn't exist
      @all.next = node.next

      # only alter the min stack if the popped node value is equal to the current top value.
      if node.val == @min.next.val
        min_node = @min.next
        @min.next = min_node.next
      end

      return node.val
    end
  end

  def top() # just return top value or nil
    @all.next ?  @all.next.val : nil
  end

  def get_min() # this is same logic as top.
    @min.next ? @min.next.value : nil
  end
end

minStack = MinStack.new;
minStack.push(-2);
minStack.push(0);
minStack.push(-3);
p minStack.get_min();   #--> Returns -3.
p minStack.pop();
p minStack.top();      #--> Returns 0.
p minStack.get_min();  # --> Returns -2.
