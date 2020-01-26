# Given a binary tree, find its maximum depth.

# The maximum depth is the number of nodes along the longest path from the root node down to the farthest leaf node.

# Note: A leaf is a node with no children.

# Example:

# Given binary tree [3,9,20,null,null,15,7],

#     3
#    / \
#   9  20
#     /  \
#    15   7
# return its depth = 3.

=begin
Mental model  -> Top Down Recursion.

The break condition is the node has no children

For each level return 1 + MAX(max_depth(left), max_depth(right))

if the node has no children then just return one

So you go down the the leaf level for each path. At the leaf level you return 1 and every level above that you return 1 + teh max of its left and right paths



=end

def max_depth(root)
  return 0 if root.nil?

  return 1 +[max_depth(root.left), max_depth(root.right)].max
end