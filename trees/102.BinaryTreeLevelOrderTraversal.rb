=begin

Given a binary tree, return the level order traversal of its nodes' values. (ie, from left to right, level by level).

For example:
Given binary tree [3,9,20,null,null,15,7],
    3
   / \
  9  20
    /  \
   15   7
return its level order traversal as:
[
  [3],
  [9,20],
  [15,7]
]

Diagram in squid
Start a queue with the root

while the queue isn't empty
    create a level results array
    then for queue.size times
      add the elements in the queue to the level results array
      then add that ellements left and right child to queue
  end


you iterate through each level. When you reach a level all that will be a queue is the elements for that level

So you iterate queue.size tiems to add all those elements to a new array
this resutls array gets pushed to the larger resutls array as a sub array
while you do this you add the left + right children to teh queue so that when the current for loop ends you will still have a full queue - this time with allt he elements of the next level

=end

require 'pry'

class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val)
        @val = val
        @left, @right = nil, nil
    end
end

def level_order(root)
  results = []
  queue = [root]
  binding.pry

  while !queue.empty? do
    level_results = []
    p queue.size
    queue.size.times do
      node = queue.pop()
      level_results.push(node)
      queue.unshift(node.left) if node.left
      queue.unshift(node.right) if node.right
    end
    results.push(level_results)
  end

  return results
end

level_order([3,9,20,nil,nil,15,7])

