=begin

[1,2,3,4]

if arr[0] === num - return 0
if arr == [] return -(arrary.size + 1)
else find[arr[1..-1]]


[1,2,3,4] - searching for 5

find[1,2,3,4]


find[2,3,4] + 1
find[3,4] + 1
find[4] + 1


arr[0] == target so return 0
if [] return -(array.length + 1)
0 + 1 + 1 + 1 + 1


if arr.size == 1
  - you'll either have the target and return - 1
  - or you won't and you'll return  -(array.length  + 1)

=end


def find_num(arr, target)
  return find_num_helper(arr, 0, target)
end

def find_num_helper(arr, index, target)
  return -1 if index == arr.size
  return index if arr[index] == target
  return find_num_helper(arr, index + 1, target)
end

arr = [1,2,3,4]
p find_num(arr, 4) == 3

p find_num(arr, 5) == -1