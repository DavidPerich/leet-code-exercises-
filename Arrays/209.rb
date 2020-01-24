# Minimum Size Subarry Sum

# Given an array of n positive integers and a positive integer s, find the minimal length of a contiguous subarray of which the sum ≥ s. If there isn't one, return 0 instead.

# Example:

# Input: s = 7, nums = [2,3,1,2,4,3]
# Output: 2
# Explanation: the subarray [4,3] has the minimal length under the problem constraint.
# Follow up:
# If you have figured out the O(n) solution, try coding another solution of which the time complexity is O(n log n).

# [2,3,1,2,4,3]

# sort() and then anchor/runner (slow fast ) pointer problem
  # for as as long as length of array

  # if anchor = runner
    # if array[anchor] == sum return  1
    # runner += 1

  # if anchor != runner
      # if anchor value + runner value = sum
        # return runner - anchor + 1?
    # if anchor value + runner value > sum
      # return 0
# else
  # array[anchor] += array[runner]
  # runner += 1
# end

# return 0

def min_sub_array_len(s, nums)

end

nums = [2,3,1,2,4,3]
min_sub_array_len(7, nums)
