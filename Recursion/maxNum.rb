=begin

 n
[1, 5, 2, 5, 9]   max reasigned 1

    n
[1, 5, 2, 5, 9]   max reasigned 5

       n
[1, 5, 2, 5, 9]

          n
[1, 5, 2, 5, 9]

             n
[1, 5, 2, 5, 9]   max reasigned 9

               n
[1, 5, 2, 5, 9]   n == array length so max is returned

=end

require 'pry'

def maxValue(arr)
  return maxValue_helper(arr, 0, max = arr[0])
end

def maxValue_helper(arr, n, max)
  return max if n == arr.size
  max = arr[n] if arr[n] > max
  maxValue_helper(arr, n + 1, max)
end

# Returning the index of the max value -


def maxValuePosition(arr)
  return max_value_position_helper(arr, 0, max_index = 0)
end

def max_value_position_helper(arr, n, max_index)
  return max_index if n == arr.size
  max_index = n if arr[n] > arr[max_index]
  max_value_position_helper(arr, n + 1, max_index)
end

arr = [1,2,10,4]
p maxValuePosition(arr)


arr2 = [11,1,2,10,4]
p maxValue(arr2)