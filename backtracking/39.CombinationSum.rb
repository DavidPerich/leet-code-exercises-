# Given a set of candidate numbers (candidates) (without duplicates) and a target number (target), find all unique combinations in candidates where the candidate numbers sums to target.

# The same repeated number may be chosen from candidates unlimited number of times.

# Note:

# All numbers (including target) will be positive integers.
# The solution set must not contain duplicate combinations.
# Example 1:

# Input: candidates = [2,3,6,7], target = 7,
# A solution set is:
# [
#   [7],
#   [2,2,3]
# ]
# Example 2:

# Input: candidates = [2,3,5], target = 8,
# A solution set is:
# [
#   [2,2,2,2],
#   [2,3,3],
#   [3,5]
# ]

# Diagram in Squid
# Success = if sum = target add the candidate
# failure = if sum > target
# optimisation + sum and minus when you pop from candidate


def combination_sum(candidates, target)
  result = []
  combinat_sum_helper(candidates, target, result,[], 0)
  result
end

def combinat_sum_helper(candidates, target, result, temp, index )
  p "candidates=#{candidates} index: #{index} "

  if temp.sum > target
    return
  end

  if temp.sum == target
    result << temp.clone()
  else
    sub_array = candidates[index..-1]
    sub_array.each.with_index do |n, i|
      temp << n
      combinat_sum_helper(sub_array, target, result, temp, i)
      temp.pop()
    end
  end
end



p combination_sum([2,3,6,7, 4], 7)