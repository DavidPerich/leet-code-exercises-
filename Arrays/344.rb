# Reverse String


# Write a function that reverses a string. The input string is given as an array of characters char[].

# Do not allocate extra space for another array, you must do this by modifying the input array in-place with O(1) extra memory.

# You may assume all the characters consist of printable ascii characters.

# Example 1:

# Input: ["h","e","l","l","o"]
# Output: ["o","l","l","e","h"]
# Example 2:

# Input: ["H","a","n","n","a","h"]
# Output: ["h","a","n","n","a","H"]

# start = 0
# end = arr.length - 1

# while a <= r do
#   array[start], array[end] = array[end], array[start]
#   start, end +=1
# end

# return arra

def reverse(array)
  start = 0
  last = array.length - 1

  while start <= last do
    array[start], array[last] = array[last], array[start]
    start += 1
    last -= 1
  end

  return array
end


input = ["h","e","l","l","o"]
output =  ["o","l","l","e","h"]

puts reverse(input) === output