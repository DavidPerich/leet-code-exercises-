
# 26-removeDuplicates.md

#         A
# nums = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4]
#            R

#         A
# nums = [0, 1, 1, 1, 2, 2, 3, 3, 4]
#            R

#            A
# nums = [0, 1, 1, 1, 2, 2, 3, 3, 4]
#               R

#            A
# nums = [0, 1, 1, 2, 2, 3, 3, 4]
#               R

#            A
# nums = [0, 1, 2, 2, 3, 3, 4]
#               R

#               A
# nums = [0, 1, 2, 2, 3, 3, 4]
#                  R

#               A
# nums = [0, 1, 2, 2, 3, 3, 4]
#                  R


# a = 0
# r = 1

# while runner is less than array length
# if array[a] = array[r]
#   remove element at runner
# else
#   incremement runner and anchor
# end

# return array.length

def remove_duplicates(nums)
    a = 0
    r = 1

    while r < nums.length
      if nums[a] == nums[r]
        nums.delete_at(r)
      else
        a += 1
        r += 1
      end
    end
    return nums
end

def remove_duplicates(nums)
  return nums.length if (nums.length <= 1)
  a = 0
  r = 1

  while r < nums.length
    if nums[a] != nums[r]
      a += 1
      nums[a] = nums[r]
    end
    r += 1
  end
  return a + 1
end