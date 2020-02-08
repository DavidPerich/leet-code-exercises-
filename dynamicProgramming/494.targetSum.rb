# You are given a list of non-negative integers, a1, a2, ..., an, and a target, S. Now you have 2 symbols + and -. For each integer, you should choose one from + and - as its new symbol.

# Find out how many ways to assign symbols to make sum of integers equal to target S.

# Example 1:
# Input: nums is [1, 1, 1, 1, 1], S is 3.
# Output: 5
# Explanation:

# -1+1+1+1+1 = 3
# +1-1+1+1+1 = 3
# +1+1-1+1+1 = 3
# +1+1+1-1+1 = 3
# +1+1+1+1-1 = 3

# There are 5 ways to assign symbols to make the sum of nums be target 3.
# Note:
# The length of the given array is positive and will not exceed 20.
# The sum of elements in the given array will not exceed 1000.
# Your output answer is guaranteed to be fitted in a 32-bit integer.


=begin
                  0
       -1                     1
  -1        1             -1        1
-1   1   -1   1        -1    1   -1   1

etc

Can also view the same tree as running sum.
                  0
       -1                     1
  -2        0             0        2
-3   -1   -1  1        -1   1   1    3

When you reach tthe end of the tree you increase the count of branches that are equal to the target

base case is if index pointer == array length. That is we've create the entire branch
     increment count if sum is equal to target
    don't increment if sum isn't equal
    return

if we aren't at the end index yet
  calculate(nums, index, sum += nums[index])
  calculate(nums, index, sum -= nums[index])


=end

# This is a divide and conquer approach with memoization. There is a more efficient solution that is very confusion that

def find_target_sum_ways(nums, s)
  return calculate(nums, 0, 0, s, cache={})
end

def calculate(nums, i, sum, target, cache)
  if i == nums.length
    return sum == target ? 1 : 0
  end

  if cache[[i,sum]].nil?
    value = nums[i]
    cache[[i, sum]] =  calculate(nums, i + 1, sum + value, target, cache) + calculate(nums, i + 1, sum - value, target, cache)
  end
  return cache[[i,sum]]
end


nums = [1, 1, 1, 1, 1]
s = 3

p find_target_sum_ways(nums, s) # should return 5