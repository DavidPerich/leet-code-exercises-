=begin
https://leetcode.com/problems/climbing-stairs/

You are climbing a stair case. It takes n steps to reach to the top.

Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?

Note: Given n will be a positive integer.

Example 1:

Input: 2
Output: 2
Explanation: There are two ways to climb to the top.
1. 1 step + 1 step
2. 2 steps
Example 2:

Input: 3
Output: 3
Explanation: There are three ways to climb to the top.
1. 1 step + 1 step + 1 step
2. 1 step + 2 steps
3. 2 steps + 1 step

=end

=begin

paths to n = paths to n - 1 + paths to n - 2
{ n: paths }
=end

require 'pry'

def climb_stairs(n)
  return climb_helper(n, cache={})
end

def climb_helper(n, cache)
  return 1 if n == 1
  return 2 if n == 2
  return cache[n] if cache[n]

  cache[n] = climb_helper(n-1, cache) + climb_helper(n-2, cache)

  return cache[n]
end

p climb_stairs(35)

# climb stairs bottom up approach

# carry forward the previous - 2 and previous - 1 and reassign them each time.