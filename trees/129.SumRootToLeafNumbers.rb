def max_depth(root)
  return 0 if root.nil?
  left, right = root.left, root.right
  left_result = max_depth(left)
  right_result = max_depth(right)
  result = [left_result, right_result].max + 1
  result
end

## pre order traversal


#       1
#   2      3
# 1   4

# root 1 - sum (0) * 10 + val = 1
# left 2 - sum(1) * 10 + val = 12 - from the root

# left 1 - sum(12) * 10 + val = 121
# right 4 - sum(12) * 10 + val = 124

# right 3 - sum(1) * 10 = 13 - from the root

# this is pre-order search comments below



def sum_numbers(root)
  return sum_numbers_helper(root, sum=0)
end

def sum_numbers_helper(node, sum)
  return 0 if node.nil?

  if node.left.nil? && node.right.nil?
    return sum * 10 + node.val
  else
    sum = (sum * 10) + node.val # root gets processed first
    return sum_numbers_helper(node.left, sum ) + sum_numbers_helper(node.right, sum) # then left gets processed. then right gets processed
  end
end

