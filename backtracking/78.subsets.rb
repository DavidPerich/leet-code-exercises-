# Given a set of distinct integers, nums, return all possible subsets (the power set).

# Note: The solution set must not contain duplicate subsets.

# Example:

# Input: nums = [1,2,3]
# Output:
# [
#   [3],
#   [1],
#   [2],
#   [1,2,3],
#   [1,3],
#   [2,3],
#   [1,2],
#   []
# ]

=begin
deadEndCondition

Unique, sorted candidate is already in results array
success conditions

Candidate has no duplicates and the candidate.sorted is not included in results array
                     candidate can be any length from [] to nums.length

Naive branching logic
  for each num recurse with each num until canidate.length = nums.length
  At any level you can add to the results array



  Insight

  For each index you can only possibly create unique subsets from i..end because any subset that includces a previous value would have already been added

  Success = no dupes and sorted candidates are unique
=end

def subsets(nums)
  result = []
  subsets_helper(nums,result, [], {})
  return result
end


end

p subsets([1,2,3, 4, 5, 6, 7, 8])

