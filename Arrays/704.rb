# binary search

# Given a sorted (in ascending order) integer array nums of n elements and a target value, write a function to search target in nums. If target exists, then return its index, otherwise return -1.

def search(arr, target)
  left = 0
  right = arr.length - 1

  while left <= right
    mid = (left + right ) / 2

    return mid if arr[mid] == target

    if arr[mid] < target
      left = mid + 1
    else
      right = mid - 1
    end
  end

  return -1
end




nums = [-1,0,3,5,9,12]
target = 9
output = 4
p search(nums, target) == output

nums = [-1,0,3,5,9,12]
target = 2
output = -1
p search(nums, target) == output


