=begin
Given a binary tree, return the preorder traversal of its nodes' values.

Example:

Input: [1,null,2,3]
   1
    \
     2
    /
   3

Output: [1,2,3]
Follow up: Recursive solution is trivial, could you do it iteratively?

=end

def preorder_traversal(root)
  return preorder_traversal_helper(root, results=[])
end

def preorder_traversal_helper(node, results)
  if node
    results.push(node.val)
    if node.left
      preorder_traversal_helper(node.left,results)
    end

    if node.right
      preorder_traversal_helper(node.right, results)
    end
  end
  return results
end