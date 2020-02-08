# Given two sorted integer arrays nums1 and nums2, merge nums2 into nums1 as one sorted array.

# Note:

# The number of elements initialized in nums1 and nums2 are m and n respectively.
# You may assume that nums1 has enough space (size that is greater or equal to m + n) to hold additional elements from nums2.
# Example:

# Input:
# nums1 = [1,2,3,0,0,0], m = 3
# nums2 = [2,5,6],       n = 3

# Output: [1,2,2,3,5,6]

=begin
Three poitners

1) starts at m - n in m array
2) starts at end of n array
3) starts at end of m array.

Working backwards. Which every value is greater gets added to the 3rd pointer. Which decrements.

When either 1) or 2) reaches the start you know that all their elements exist in m. So the rest of the elements should

=end

def merge(nums1, m, nums2, n)
  m -= 1
  n -= 1
  # Convert to index positions
  i = nums1.length - 1

  until i == -1
    p "n: #{n}, m: #{m}, #{nums1}"
    if n >= 0 &&  nums2[n] >= nums1[m]
      nums1[i] = nums2[n]
      n -= 1
    else
      nums1[i] = nums1[m]
      m -= 1
    end
    i -= 1
  end
  return nums1
end

arr1 = [1,2,3,0,0,0]
arr2 = [2,5,6]
m = 3
n = 3

p merge(arr1, m, arr2, n)