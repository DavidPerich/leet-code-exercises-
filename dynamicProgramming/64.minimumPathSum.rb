# https://leetcode.com/problems/minimum-path-sum/?tab=Description
# Given a m x n grid filled with non-negative numbers, find a path from top left to bottom right which minimizes the sum of all numbers along its path.

# Note: You can only move either down or right at any point in time.

# Example:

# Input:
# [    0  1  2
#   0 [1, 3, 1],
#   1 [1, 5, 1],
#   2 [4, 2, 1]
# ]
# Output: 7
# Explanation: Because the path 1→3→1→1→1 minimizes the sum.


  # end_point = its own value so grid[last row][last colum] + whhich ever is greater of the square to the left and the square above it

  # assume that the each row is same length.

## Return the minimum SUM to get to a particular grid.

require 'pry'


def min_path_sum(grid)
  last_row = grid.size - 1
  last_col = grid[0].size - 1
  return mps_helper(grid, last_row, last_col, cache={})
end

def mps_helper(grid, row, col, cache)
  cur_value = grid[row][col]

  return 0 if col == 0 && row == 0
  return cur_value + cache[[row, col]] if cache[[row, col]]

  return cur_value + mps_helper(grid, row, col - 1, cache) if row == 0
  return cur_value + mps_helper(grid, row - 1, col, cache) if col == 0

  min_path = [mps_helper(grid, row - 1, col, cache), mps_helper(grid, row, col - 1, cache)].min

  cache[[row, col]] = cur_value + min_path
  return cur_value + min_path
end


# check cache for path
# save cache if not presnet

grid = [
  [1,3,1],
  [1,5,1],
  [4,2,1]
]

largeGrid = [[1,4,8,6,2,2,1,7],
             [4,7,3,1,4,5,5,1],
             [8,8,2,1,1,8,0,1],
             [8,9,2,9,8,0,8,9],
             [5,7,5,7,1,8,5,5],
             [7,0,9,4,5,6,5,6],
             [4,9,9,7,9,1,9,0]]

p min_path_sum(largeGrid)