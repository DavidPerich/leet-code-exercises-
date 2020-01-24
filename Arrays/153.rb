# 153. Find Minimum in Rotated Sorted Array

## Solution wasn't working - but I got close







# Suppose an array sorted in ascending order is rotated at some pivot unknown to you beforehand.

# (i.e.,  [0,1,2,4,5,6,7] might become  [4,5,6,7,0,1,2]).

# Find the minimum element.

# You may assume no duplicate exists in the array.

# Example 1:

# Input: [3,4,5,1,2]
# Output: 1
# Example 2:

# Input: [4,5,6,7,0,1,2]
# Output: 0
=begin
anchor runner solution which will be O(N)
 [4,5,6,7,0,1,2]

  a r
 [4,5,6,7,0,1,2] r value is greater so keep moving forward

  a   r
 [4,5,6,7,0,1,2] r value is greater so keep moving forward

 a     r
[4,5,6,7,0,1,2] r value is greater so keep moving forward

 a       r
[4,5,6,7,0,1,2] r value less than anchor value so break and return nums[r]
=end

=begin
anchor runner solution which will be O(N)
 [1, 2]

  a  r
 [1, 2] / anchor value is less than runner value so keep moving forwad

   a    r
 [1, 2] runner is greater than array length so break - return anchor value
=end

def find_min(nums)
  a = 0
  r = 1
  while r < nums.size
     if nums[r] < nums[a]
        return nums[r]
     else
        r+=1
     end
  end
  return num[a]
end


=begin

    /
   /
  /
l/
      / r
     /
    /

- The insight here that you have two sorted segments
- you have more data than just your neighbours
- the pivot point allows you to know something about l and r .. right is less than left - awlays by definition of pivot


binary search  solution which will be O(Log N )
conditions

There are no duplicates so the insight is that pivoting around a point will distribute the values unevenly - which I mean that which means that the left will start with a higher value OR the right will end with a higher value.

If you pivot around the middle then the middle will be first result of binary search



if l and r are touching then break
  otherwise keep looping and searching smaller halves with these conditons

  if the values for m - 1 < m && m + 1 > m - then m is the pivot
  if left < right search left
  if right < left search right

[4,5,6,7,0,1,2]


  l     m     r
 [4,5,6,7,0,1,2] r less so search right

          l m r
 [4,5,6,7,0,1,2] left value is left so search left

          r
          l
 [4,5,6,7,0,1,2] left and right are same so break - you'll return

=end

=begin
 [1, 2]

  l  r
 [1, 2] / immediately break because they are touching


 [1, 2] if l is <= right return left
=end
require "pry"

def find_min(nums)
  left = 0
  right = nums.size - 1

  while left + 1 < right
    mid = left + (right - left ) / 2

    if nums[mid - 1] > nums[left] && nums[mid + 1] < nums[right]
      return nums[mid]

    elsif nums[left] < nums[right]
      right = mid
    else
      left = mid
    end
  end

  if nums[left] < nums[right]
    return nums[left]
  else
    return nums[right]
  end
end

arr = [1, 2, 3]

p find_min(arr)