

def minimum_total(triangle)
   return minimum_total_helper(triangle, 0, 0, 0, cache={})
end

# total minimum sum of adjacent paths to a particular cell


def minimum_total_helper(triangle, row, col, sum, cache)
  return sum if row == triangle.size

  return cache[[row, col]] if cache[[row, col]]

  cache[[row, col]] = sum += triangle[row][col]
  p cache
  return [minimum_total_helper(triangle, row + 1, col, sum, cache), minimum_total_helper(triangle, row + 1, col + 1, sum, cache)].min
end

triangle = [
  [2],
 [3,4],
[6,5,7],
[4,1,8,3]
]

p minimum_total(triangle)