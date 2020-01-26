=begin
Given the root node of a binary search tree (BST) and a value to be inserted into the tree, insert the value into the BST. Return the root node of the BST after the insertion. It is guaranteed that the new value does not exist in the original BST.

Note that there may exist multiple valid ways for the insertion, as long as the tree remains a BST after insertion. You can return any of them.

For example,

Given the tree:
        4
       / \
      2   7
     / \
    1   3
And the value to insert: 5
You can return this binary search tree:

         4
       /   \
      2     7
     / \   /
    1   3 5
This tree is also valid:

         5
       /   \
      2     7
     / \
    1   3
         \
          4



root, left || right

if val > node
  if !node.irght then insert there
  else (insert_into(node.left, val)

if val < node
  if !node.left then set node.left = val
  else (insert_into(node.left, val)
=end

def insert_into_bst(root, val)
  return TreeNode.new(val) if root.nil?

  if val <= root.val
    root.left = insert_into_bst(root.left, val)
  else
    root.right = insert_into_bst(root.right, val)
  end

  return root
end

# the solution returns a new node if the root is nil (if you've reached the bottom of the tree) this return value gets assigned to the root.left or right