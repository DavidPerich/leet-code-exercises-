## description
Write a function that reverses a string. The input string is given as an array of characters char[].

Do not allocate extra space for another array, you must do this by modifying the input array in-place with O(1) extra memory.

You may assume all the characters consist of printable ascii characters.

Example 1:

Input: ["h","e","l","l","o"]
Output: ["o","l","l","e","h"]

Example 2:

Input: ["H","a","n","n","a","h"]
Output: ["h","a","n","n","a","H"]

## Solution - Start and end pointers

- Two pointers - one starting at 0 index and one starting at last index.
- swap the values in place
  - you can use a temporary variable
  - Or you can use double assignment (see code below)
- increment the start pointer and decrement the end pointer
- end when the start pointer is equal to or greater than the end pointer

If the string length is odd then the pointers will reach each other. If the string length then the start pointer will end up as one greater.

 s
[h, e, l, l, o]
             e
swap the values at `s` and `e` pointers

    s
[o, e, l, l, h]
          e
Swap because the start pointer is still less than the end pointer

       s
[o, l, l, e, h]
       e

The pointers are now equal - so break the loop adn return the new array

### Coded solution (if you have one - include which language)

```rb
def reverse_string(array)
 start = 0
  last = array.length - 1

  while start <= last do
    array[start], array[last] = array[last], array[start]
    start += 1
    last -= 1
  end

  return array
end
```