=begin
Given a non-empty binary tree, return the average value of the nodes on each level in the form of an array.

Example 1:

Input:

    3
   / \
  9  20
    /  \
   15   7

Output: [3, 14.5, 11]
Explanation:
The average value of nodes on level 0 is 3,  on level 1 is 14.5, and on level 2 is 11. Hence return [3, 14.5, 11].

Note:


The range of node's value is in the range of 32-bit signed integer.

MENTAL MODEL

QUEUE
While processing the current level - add the next level to the queue
  - only add non-nil children to the queue
  - average = number of elements in queue
=end

def average_of_levels(root)
  results = []
  queue = [root]

  while queue.size > 0
    sum = 0
    size = queue.size
    size.times do
      node = queue.pop()
      sum += node.val
      queue.unshift(node.left) if node.left
      queue.unshift(node.right) if node.right
    end

    results.push(sum.to_f/size)
  end

  return results
end

