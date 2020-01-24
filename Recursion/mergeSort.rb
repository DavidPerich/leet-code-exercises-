
def mergesort(arr)
  return arr if arr.size <= 1

  half_of_size = ( arr.size / 2)

  left_array  = arr.take(half_of_size)
  right_array = arr.drop(half_of_size)

  sorted_left_array = mergesort(left_array)
  sorted_right_array = mergesort(right_array)

  merge(sorted_left_array, sorted_right_array)
end

def merge(left_arr, right_arr)
  return left_arr if right_arr.empty?
  return right_arr if left_arr.empty?

  smallest_number = if left_arr.first <= right_arr.first
    [left_arr.shift]
  else
    [right_arr.shift]
  end

  smallest_number.concat(merge(left_arr, right_arr))
end

arr = [1, 2, 3, 4, 1, 2, 1]

p mergesort(arr)