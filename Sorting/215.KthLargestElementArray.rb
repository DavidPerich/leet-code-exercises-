 # Find the kth largest element in an unsorted array. Note that it is the kth largest element in the sorted order, not the kth distinct element.

# Example 1:

# Input: [3,2,1,5,6,4] and k = 2
# Output: 5
# Example 2:

# Input: [3,2,3,1,2,4,5,5,6] and k = 4
# Output: 4
# Note:
# You may assume k is always valid, 1 ≤ k ≤ array's length.

# varition on quick sort

=begin
Example
[3, 2, 1 ,5 6 ,4] - k = 2
This means we are searching for the second largest number


At its simplest we can sort the array and get array[array.length - k] value to get the result.

We can optimise by not sorting teh entire array - but by partitioning sorting until we find the kth value

with our example if we partitioned from the end index we would split our array like this:

[3, 2, 1]  [4]    [6, 5]
 0  1  2    3      4  5
Since k = 2 and length = 6 that in a properly sorted array our kTh value will be at index  4.

If pivot == index4 then we know we have the right value. If not then:
if pivot > 4 search the left partition
if pivot < 4 search the right partition

So we'd quickSort the right partition because pivot(3) is less than search index (4)

[6, 5]

becomes

[5]  [6]
 4    5

 now pivot index == search index and we know we have the 2nd largest valu
=end

require 'pry'
def find_kth_largest(nums, k)
  left = 0
  right = nums.length - 1
  k_index = nums.length - k

   quick_sort_helper(nums, left, right, k_index )
   nums[k_index]
end

def quick_sort_helper(arr, left, right, k_index)
  return arr if left >= right

  p_index = partition(arr, left, right)

  # return arr if p_index == k_index
  if p_index > k_index
    quick_sort_helper(arr, left, p_index - 1, k_index)
  else
    quick_sort_helper(arr, p_index + 1, right, k_index)
  end
end

def partition(arr, left, right)
  pivot = right
  p_index = left

  while left < right
    if arr[left] <= arr[pivot]
      arr[left], arr[p_index] = arr[p_index], arr[left]
      p_index += 1
    end
    left += 1
  end

  arr[p_index], arr[pivot] = arr[pivot], arr[p_index]
  return p_index
end

p find_kth_largest([3, 2, 1 ,5, 6 ,4], 2)
