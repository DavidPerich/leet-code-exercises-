=begin
Divide and conquer
choose a partion point (simplest is the first or last element)
Want to get all elements less than the pivot to the left of the pivot and all the elements greater than the pivot to the right of the pivot.
The elements won't be sorted straight away - but will be partioned to one side of the pivot

set pointers for left and right
left = 0
right = array.length - 1

base case: 1 element array is sorted

if value at left is less than poitner += 1
if value at right is greater than pointer -= 1

if value at left is greater than value at pivot AND value at right is less than value at pivot - swap those

when they meet swap value at pivot with value at right

while i < last
  pivot = myArray[last] — 4
  myArray = [3, 4, 1, 5, 7, 1, 4]
  i = 0
  p_index = 0

  myArray = [3, 4, 1, 5, 7, 1, 4]
  arr[i] = 3 is less than or equal to 4,
  3 will stay in its position(swapping 0 with 0)
  i = 1
  p_index = 1

  myArray = [3, 4, 1, 5, 7, 1, 4]
  4 is less than or equal to 4
  swap (1 with 1)
  i = 2
  p_index = 2

  myArray = [3, 4, 1, 5, 7, 1, 4]
  1 is less than or equal to 4
  swap (2 with 2)
  i = 3
  p_index = 3

  myArray = [3, 4, 1, 5, 7, 1, 4]
  5 is greater than 4
  do not swap
  i = 4
  p_index = 3

  myArray = [3, 4, 1, 5, 7, 1, 4]
  7 is greater than 4
  do not swap
  i = 5
  p_index = 3

  myArray = [3, 4, 1, 5, 7, 1, 4]
  1 is less than or equal to 4
  swap element at arr[i] 1 with element at arr[p_index] 5
  i = 6
  p_index = 4

  myArray = [3, 4, 1, 1, 7, 5, 4]
  i is not less than last
  p_index = 4

  swap element at arr[pivot] with element at p[index]
  myArray = [3, 4, 1, 1, 4, 5, 7]
end
return p_index = 4

=end

def quick_sort(arr, left=0, right=arr.length - 1)
  return arr if left >= right
  p_index = partition(arr, left, right)
  quick_sort(arr, left, p_index - 1)
  quick_sort(arr, p_index + 1, right)
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

array = [1,10,2, 8,5,9,3,6]
p quick_sort(array)