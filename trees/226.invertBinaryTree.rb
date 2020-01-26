=begin
Invert a binary tree.

Example:

Input:

     4
   /   \
  2     7
 / \   / \
1   3 6   9
Output:

     4
   /   \
  7     2
 / \   / \
9   6 3   1

Diagram on Squid

if !Node then return the ndoe
else for each node
  left, right = right, left
  recurisve on left and right nodes

=end

def invert_tree(root)
  return if !root
  return root if !root.left && !root.right
  root.left, root.right = root.right, root.left
  invert_tree(root.left)
  invert_tree(root.right)

  return root
end