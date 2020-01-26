=begin
Given a binary tree, return the inorder traversal of its nodes' values.

Example:

Input: [1,null,2,3]
   1
    \
     2
    /
   3

Output: [1,3,2]
Follow up: Recursive solution is trivial, could you do it iteratively?


=end

def inorder_traversal(root)
  return inorder_traversal_helper(root, results=[])
end

def inorder_traversal_helper(node, results)
  if node
    if node.left
      inorder_traversal_helper(node.left,results)
    end
    results.push(node.val)

    if node.right
      inorder_traversal_helper(node.right, results)
    end
  end
  return results
end