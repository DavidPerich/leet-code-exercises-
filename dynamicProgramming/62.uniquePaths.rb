=begin

       0       1      2
  0 |start||     ||     |
    |_____||_____||_____|
  1 |     ||     ||     |
    |_____||_____||_____|
  2 |     ||     ||     |
    |_____||_____||_____|
  3 |     ||     ||     |
    |     ||     ||end  |

    [
      [1, 1, 1]
      [1, 2, 3]
      [1, 3, 6]
      [1, 4, 10]
    ]

    m = 3, n = 4

unique_paths(column, row)  = unique_paths(column - 1, row) + unique_paths(column, row - 1)
=end

#  Function is all the unique paths to a specifc coordinate in the square

def unique_paths(c, r)
  return up_helper(c, r, cache={})
end

def unique_paths_helper(c, r, cache)
  return 1 if c == 1 || r == 1  # this works because we care about only about the total unique paths. If you hit the edge of the row or column there can only be one path to get there.
  return cache[[c, r]] if cache[[c, r]]
  cache[[c, r]] = unique_paths_helper(c - 1, r, cache) + unique_paths_helper(c,  r - 1, cache)
end

p unique_paths(100, 10)