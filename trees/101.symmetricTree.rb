=begin Given a binary tree, check whether it is a mirror of itself (ie, symmetric around its center).

For example, this binary tree [1,2,2,3,4,4,3] is symmetric:

    1
   / \
  2   2
 / \ / \
3  4 4  3


But the following [1,2,2,null,3,null,3] is not:

    1
   / \
  2   2
   \   \
   3    3


diagram in squid

conditions
start with node.left and node.right
if node doesn't have both then it can't be balanced?


Return true if left.leftChild == right.rigthChild &&
   left.rightChild = right.leftChild

Return true if !node

=end

def is_symmetric(root)
  return true if !root
  return is_symmetric_helper(root.left, root.right)

end

def is_symmetric_helper(right, left)
  return true if !right && !left
  return false if !right && left || !left && right ||  right.val != left.val
  return is_symmetric_helper(left.right, right.left) && is_symmetric_helper(left.left, right.right)
end