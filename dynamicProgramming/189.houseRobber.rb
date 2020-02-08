
# You are a professional robber planning to rob houses along a street. Each house has a certain amount of money stashed, the only constraint stopping you from robbing each of them is that adjacent houses have security system connected and it will automatically contact the police if two adjacent houses were broken into on the same night.

# Given a list of non-negative integers representing the amount of money of each house, determine the maximum amount of money you can rob tonight without alerting the police.

# Example 1:

# Input: [1,2,3,1]
# Output: 4
# Explanation: Rob house 1 (money = 1) and then rob house 3 (money = 3).
#              Total amount you can rob = 1 + 3 = 4.
# Example 2:

# Input: [2,7,9,3,1]
# Output: 12
# Explanation: Rob house 1 (money = 2), rob house 3 (money = 9) and rob house 5 (money = 1).
#              Total amount you can rob = 2 + 9 + 1 = 12.


=begin
diagram in squid

Divide and conquer

The last index will be a return greater of rob(i - 2) + nums[i) AND rob(i)

=end


def rob(nums)
  return 0 if nums.empty?
  return nums[0] if nums.length == 1
  rob_helper(nums, nums.size - 1, cache={})
end

def rob_helper(nums, i, cache)
  p cache
  value = nums[i]
  return 0 if i < 0
  return nums[i] if i == 0

  return cache[i] if cache[i]
  cache[i] =

  current_largest = rob_helper(nums, i - 2, cache) + value
  previous_largest = rob_helper(nums, i - 1, cache)

  cache[i] = current_largest >= previous_largest ? current_largest : previous_largest
  return cache[i]
end

p rob([2,7,9,3,1])
