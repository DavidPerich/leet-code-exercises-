def two_sum(nums, target)
  return if nums.nil? || target.nil?

  map = {}
  for i in 0..nums.length - 1 do
      x = nums[i]
      if (map[target - x])
          return [map[target - x], i  ]
      else
       map[x] = i
      end
  end
end

array = [1, 2, 3, 4, 5, 6, 7]
array2 = [1, 4, 4]
sum = 8

p two_sum(array, sum)
p two_sum(array2, sum)





