# 29-removeElement

# Given an array nums and a value val, remove all instances of that value in-place and return the new length.

# Do not allocate extra space for another array, you must do this by modifying the input array in-place with O(1) extra memory.

# The order of elements can be changed. It doesn't matter what you leave beyond the new length.

# start point at beginnign and end
# if beginning point is given value and end is not then swap
# if beginning pointer is given value and end pointer is as well then move end pointer
# if neither are then move both towards each other
# stop when they meet each other
# return the end pointer

def remove_element(nums, val)

  left = 0
  right = nums.length - 1

  while (left <= right) do
    if nums[left] == val
      if nums[right] != val
        nums[left]= nums[right]
      end
      right -= 1
    else
      left += 1
    end
  end
  return left
end

example1 = [3,2,2,3]
val = 3


example2 = [0,1,2,2,3,0,4,2]
solution2 = [0, 1, 3, 0, 4, "doesn't matter"]
5
val2 = 2

example3 = [0]
val3 = 0
p remove_element(example1, val)

p remove_element(example3, val3)
p remove_element(example2, val2)