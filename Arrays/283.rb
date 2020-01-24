# move_zeroes

# a
# [0, 1, 0, 3, 12]
#     r

#     a
# [1, 0, 0, 3, 12]
#        r

#     a
# [1, 0, 0, 3, 12]
#           r

#        a
# [1, 3, 0, 0, 12]
#               r


#        a
# [1, 3, 12, 0, 0]
#                r > length so break

# let anchor = 0
# let runner = 1

# while runner < array.length
  # # // if anchor value = 0 & runner value = 0
    # // move runner forward
  # if runner value != 0
    # swap values and incremenet both
  # anchor value isn't 0
  # push them both forward


def move_zeroes(nums)
  a = 0
  r = 1

  while r < nums.length
    if nums[a] == 0
      if nums[r] != 0
        nums[a], nums[r] = nums[r], nums[a]
      else
        r += 1
        next
      end
    end

    a += 1
    r += 1
  end

  return nums
end



this =  [2, 1]
z=  [0,1,0,3,12]
x = [1, 0]
y = [1]



p move_zeroes(this)
p move_zeroes(z)

p move_zeroes(x)
p move_zeroes(y)


# def move_zeroes(nums)
#   a = 0
#   r = 1

#   while r < nums.length
#     if nums[a] == 0
#       if nums[r] != 0
#         nums[a], nums[r] = nums[r], nums[a]
#         a +=1
#       end
#     else
#       a += 1
#     end
#     r += 1
#   end

#   return nums
# end