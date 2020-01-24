left = 0
right = array.size - 1
while left + 1 <  right
  mid = left + (right - left) / 2   # instead of (left+right)/2 to minimize overflow
  if array[mid] == target
    # optional early return
  elsif ***comparison***
    # always include mid in the next iteration
    left = mid
  else
     right = mid
  end
end

# loop ends when left and right pointers are next to earch other; either could be the result

if array[left] == target
  ...
end
if array[right] == target
  ...
end