162. Find Peak Element
https://leetcode.com/problems/find-peak-element/

A peak element is an element that is greater than its neighbors.

Given an input array nums, where nums[i] ≠ nums[i+1], find a peak element and return its index.

The array may contain multiple peaks, in that case return the index to any one of the peaks is fine.

You may imagine that nums[-1] = nums[n] = -∞.

Example 1:

Input: nums = [1,2,3,1]
Output: 2
Explanation: 3 is a peak element and your function should return the index number 2.
Example 2:

Input: nums = [1,2,1,3,5,6,4]
Output: 1 or 5
Explanation: Your function can return either index number 1 where the peak element is 2,
             or index number 5 where the peak element is 6.
Note:

Your solution should be in logarithmic complexity.

## Further info on start and end of array

this sentance - **You may imagine that nums[-1] = nums[n] = -∞.** - means:

we can imagine the value before the start of the array and the value after the end of the array as negative infinity. This means if the start and end point of the array can be a "peak" under certain conditions
        e
s      /|
|\    / |
| \  /  |
|  \/   |

Chris created this diagram to show that -infinity would mean a steep drop off at the start and end of the array.

## mental model - Binary search - based on values

We can determine where we are on a peak by check the value to the left and right of our position.

    x       break condition - to the left of the point is less than and to the right is greater than
   / \
  /   \
 /     \
/       \


   / \
  /   \
 x     \
/       \

break condition - to the left of the point is less than and to the right is greater than - binary search right

   / \
  /   \
 /     x
/       \

if here then to the left of the point will be greater than and the left will be less than - so search to the left


   |\
   | \
   |  x  / \
   |   \/   \

Since the start of the array counts as a peak it is still acceptable to search left.
=end

## conditions
- if both p+1, p-1 values are less than p value then you are at a true peak
- if p - 1 > p value then peak is towards your left - search left
- if p - 1 < p value then peak is towards your right - search right
- if you reach either end of the array you've searched your way to a "fake" peak using the negative infinity information

## Working code

This isnt' the cleanest code

```rb
def find_peak_element(nums)
  left = 0
  right = nums.size - 1

  while (left + 1 < right)
    mid = left + (right - left) / 2
    if nums[mid - 1] < nums[mid] && nums[mid + 1] < nums[mid]
      return mid
    elsif nums[mid - 1] < nums[mid]
      left = mid
    else
      right = mid
    end
  end
  return nums[left] < nums[right] ? right : left
end
```