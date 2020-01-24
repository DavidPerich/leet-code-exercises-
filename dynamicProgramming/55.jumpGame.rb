=begin
Given an array of non-negative integers, you are initially positioned at the first index of the array.

Each element in the array represents your maximum jump length at that position.

Determine if you are able to reach the last index.

Example 1:

Input: [2,3,1,1,4]
Output: true
Explanation: Jump 1 step from index 0 to 1, then 3 steps to the last index.
Example 2:

Input: [3,2,1,0,4]
Output: false
Explanation: You will always arrive at index 3 no matter what. Its maximum
             jump length is 0, which makes it impossible to reach the last index.











[2,1,1,0,4]

true if you reach the last index
false if you go past it
false if you can't get to it















Base cases

  if index == last index return true
  if index > last index return false
  if steps are 0 then return false

  for any index in the array - return true if any path from there to the end is true

  Or alternatively

  For any index in the array - return FALSE if all paths from that index forward either don't reach the end or go past the end index.

=end
require 'pry'

def can_jump(nums)
  return can_jump_helper(nums, 0, nums[0])
end


def can_jump_helper(nums, idx, steps)
  return false if nums[idx] == 0

  for i in 1..steps  do
    return true if idx + i >= nums.size - 1
    can_jump_helper(nums, idx + i, nums[idx + i])
  end
end


# p can_jump([2,3,1,1,4])
p can_jump([2,0,0])
