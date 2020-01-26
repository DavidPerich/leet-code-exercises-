# Given two binary trees, write a function to check if they are the same or not.

# Two binary trees are considered the same if they are structurally identical and the nodes have the same value.

# Example 1:

# Input:     1         1
#           / \       / \
#          2   3     2   3

#         [1,2,3],   [1,2,3]

# Output: true
# Example 2:

# Input:     1         1
#           /           \
#          2             2

#         [1,2],     [1,null,2]

# Output: false
# Example 3:

# Input:     1         1
#           / \       / \
#          2   1     1   2

#         [1,2,1],   [1,1,2]

# Output: false

=begin
  Two trees are identical if:

  The left and right child trees are structurally identical
    structurally identical means

    each node has the same value and is in the same position (left / right)

  output a boolean

  Algorithm
  # some condition for root
  leftQueue = root.


def is_same_tree(p, q)
  leftQueue = [q]
  rightQueue = [q]

  # while leftQueue is not empty and rightQueue is not empty
    return false if leftQueue.size != rightQueue.size

    # can probably refine that if one queue  is empty and other isn't to immediately return false

    leftNodes = []
    rightNodes = []

    for each


end

=end

