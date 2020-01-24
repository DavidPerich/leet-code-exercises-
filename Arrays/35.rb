
# 35. Search Insert Position
=begin
Given a sorted num arrats and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.

You may assume no duplicates in the array.

Example 1:

Input: [1,3,5,6], 5
Output: 2
Example 2:

Input: [1,3,5,6], 2
Output: 1
Example 3:

Input: [1,3,5,6], 7
Output: 4
Example 4:

Input: [1,3,5,6], 0
Output: 0


While left != right - need them to end up on top of each other

# [1,3,5,6], 5
 l m   r
[1,3,5,6]

   l m r
[1,3,5,6]  // return index


EXAMPLE 2
Input: [1,3,5,6], 0
 l m   r
[1,3,5,6] - mid value is greater than target so right = mid


m
l r
[1,3,5,6] - mid value is greater than target so right = mid

m
r
l
[1,3,5,6] - mid value is greater than target so right = mid

left = right so we break and we return value of one of them?


=end

=begin
  The challenge here was determing the right ending conditions and what value to return.

  You need the left and the right to end up on top of each other rather than end when next to each other, because you need to determine whether the insertion happens before, between or after left/right


=end


def search_insert(nums, target)
  left = 0
  right = nums.length - 1

  while left <= right
    mid = left + (right - left ) / 2
    if nums[mid] == target
      return mid
    elsif nums[mid] > target
      right = mid - 1
    else
      left = mid + 1
    end
  end
  return left
end
search_insert([1,3,5,6], 2)