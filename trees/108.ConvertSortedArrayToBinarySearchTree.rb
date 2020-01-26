# Given an array where elements are sorted in ascending order, convert it to a height balanced BST.

# For this problem, a height-balanced binary tree is defined as a binary tree in which the depth of the two subtrees of every node never differ by more than 1.

# Example:

# Given the sorted array: [-10,-3,0,5,9],

# One possible answer is: [0,-3,9,-10,null,5], which represents the following height balanced BST:

#       0
#      / \
#    -3   9
#    /   /
#  -10  5

=begin

Diagram in squid
Divide and conquer approach

Mid point of the array becmoes root of the tree
then mid point of left and right halfs of the array become the left and right children.

break condition is if left and right pointers are teh same (array size is 1)


=end

def sorted_array_to_bst(nums)
  return sorted_array_to_bst_helper(nums, 0, nums.size - 1)
end

def sorted_array_to_bst_helper(array, low, high) #left pointer, right_pointer
  return nil if low > high

  mid = low + (high - low) / 2

  node = TreeNode.new(array[mid])
  node.left = sorted_array_to_bst_helper(array,low , mid - 1)
  node.right = sorted_array_to_bst_helper(array, mid + 1, high)

  return node
end