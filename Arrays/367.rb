# 367. Valid Perfect Square
# Given a positive integer num, write a function which returns True if num is a perfect square else False.

# Note: Do not use any built-in library function such as sqrt.

# Example 1:

# Input: 16
# Output: true
# Example 2:

# Input: 14
# Output: false

=begin

l         m              r
[1, 2, 3, 4, 5, 6, 7, 8, 9] m * m > num so binary search to the left

l     m  r
[1, 2, 3, 4, 5, 6, 7, 8, 9]  / m * m = num so return true

 l                 m                         r
[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]  m*m is greater than num so binary search to left

 l        m     r                         r
[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]    m*m is greater than num so binary search to left

 l     m  r
[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]   m*m is less than so

=end


## THIS DOES NOT WORK

def is_perfect_square(num)
  left = 0
  right = num / 2

return true if num == 1
while left + 1 < right
  mid = left + (right - left ) / 2
  midSqrd = mid*mid
  if midSqrd == num
    return true
  elsif midSqrd > num
    right = mid
  else
    left = mid
  end
end
return (left * left == num || right * right == num)
end