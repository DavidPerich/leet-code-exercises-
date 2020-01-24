

=begin
 Find First and Last Position of Element in Sorted Array

 Given an array of integers nums sorted in ascending order, find the starting and ending position of a given target value.

Your algorithm's runtime complexity must be in the order of O(log n).

If the target is not found in the array, return [-1, -1].

Example 1:

Input: nums = [5,7,7,8,8,10], target = 8
Output: [3,4]
Example 2:

Input: nums = [5,7,7,8,8,10], target = 6
Output: [-1,-1]


input
-  sorted array and a target
- if the target is included in the array will it always include two values? Or coudl it be the same
output
-  is an array of two values

 l     m   r
[5,7,7,8,8,10]


          m
[5,7,7,8, 8 ,8,9, 10]
          lr

          m
[5,7,7,8, 8, 8,9, 10]
       l    r

          m
[5,7,7,8, 8, 8,9, 10]
       l    r

=end

def search_range(nums, target)
  left = 0
  right = nums.length - 1

  while left + 1 < right
    mid = left + (right - left) / 2
    if nums[mid] == target
      left =  mid
      right = mid
    elsif nums[mid] > target
      right = mid
    else
      left = mid
    end
  end

  ## THIS ISN'T actualy binary search - THIS COULD JUST END UP O(N)

  while nums[left - 1] == target
   left -=1
  end

  while nums[right + 1] == target
    right += 1
  end

  return [left, right]
end

array = [5,7,7,8,8,10]
target = 6

p search_range(array, target)

=begin


Double binary search

Search for upper and lower indexes of 1

 l           m           r
[0, 1, 1, 1, 2, 3, 4, 5, 6] - m value is greater than target so keep searching. Set r to mid
                             - also no need to search the right side

 l     m      r
[0, 1, 1, 1, 2, 3, 4, 5, 6] m value is equal to target, but left is still less than mid so there is opportunity for lower index

 l  m  r
[0, 1, 1, 1, 2, 3, 4, 5, 6] m value is equal to target, but left is still less than mid so there is opportunity for lower index

 m
 l  r
[0, 1, 1, 1, 2, 3, 4, 5, 6] m value is less than target. So stop decrementing.


If rightFlag = true
 l           m           r
[0, 1, 1, 1, 1, 1, 4, 5, 6]


then binary search, but stop

=end

# result = [-1, -1] return result




# code binary search solution