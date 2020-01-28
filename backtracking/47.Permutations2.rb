# Given a collection of numbers that might contain duplicates, return all possible unique permutations.

# Example:

# Input: [1,1,2]
# Output:
# [
#   [1,1,2],
#   [1,2,1],
#   [2,1,1]
# ]

# I was really confused by the !use[i - 1] vs use[i - 1] thing, but after drawing out the path on paper, I understood why we need to use !use[i - 1] for efficiency.

# if (i > 0 && nums[i] == nums[i - 1] && !use[i - 1]) continue; means, in other words, if previous identical number is used, then use the current number.

# why?

# because if you use the opposite way, if (i > 0 && nums[i] == nums[i - 1] && use[i - 1]) continue; which means if previous identical number is NOT used, use this number, you are going to have to keep running the program until the next identical number first populates the temp/list array before the previous identical number, and then you backtrack into the first identical number which then populates the temp/list array.

# Take a look at the second picture by @msmohitsharma10.
# That one is using if (i > 0 && nums[i] == nums[i - 1] && use[i - 1]) continue;. You will see that the result array really starts to populate near the end of for loop when i = 2.
# In contrast, the first picture using if (i > 0 && nums[i] == nums[i - 1] && !use[i - 1]) continue; shows that the result array starts populating in the beginning.

# That's why !use[i - 1] is more efficient.

require 'pry'

def permute_unique(nums)
  result = []
  permute_helper(nums.sort!, result, [], {})
  return result
end

def permute_helper(nums, result, candidate, cache)
  p candidate, nums.size
  if candidate.size == nums.size
    result << candidate.clone()
    return
  else
    for i in 0..nums.size - 1 do
      next if cache[i]
      next if i > 0 && nums[i - 1] == nums[i] && !cache[i - 1]
      candidate << nums[i]
      cache[i] = true
      permute_helper(nums, result, candidate, cache)
      candidate.pop()
      cache[i] = false
    end
  end
end

p permute_unique([1,1,2])