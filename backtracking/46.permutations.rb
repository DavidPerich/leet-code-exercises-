=begin
Given a collection of distinct integers, return all possible permutations.

Example:

Input: [1,2,3]
Output:
[
  [1,2,3],
  [1,3,2],
  [2,1,3],
  [2,3,1],
  [3,1,2],
  [3,2,1]
]

MENTRAL MODEL
Backtracking
Diagram in squid

For each element in array create a tree of all possible options
  Prune if duplicate value e.g can't have 1 - 1 - 3
  add candidate to results if length of candidate = lenggth of nums
=end

def permute(nums)
  result = []
  permute_helper(nums, result, [])
  return result
end

def permute_helper(nums, result, candidate)
  if candidate.size == nums.size
    result << candidate.clone()
    return
  else
    nums.each do |num|
     next if candidate.include?(num)
      candidate << num
      permute_helper(nums, result, candidate)
      candidate.pop()
    end
  end
end

p permute([1,2,3])