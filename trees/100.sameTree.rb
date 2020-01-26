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
Nancy Mental model -

=end

def is_same_tree(r1, r2)
  return r1.nil? && r2.nil? if r1.nil? || r2.nil?
  (r1.val == r2.val) && \
    is_same_tree(r1.left, r2.left) && \
    is_same_tree(r1.right, r2.right)
end