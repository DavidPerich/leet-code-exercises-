# Given a collection of candidate numbers (candidates) and a target number (target), find all unique combinations in candidates where the candidate numbers sums to target.

# Each number in candidates may only be used once in the combination.

# Note:

# All numbers (including target) will be positive integers.
# The solution set must not contain duplicate combinations.
# Example 1:

# Input: candidates = [10,1,2,7,6,1,5], target = 8,
# A solution set is:
# [
#   [1, 7],
#   [1, 2, 5],
#   [2, 6],
#   [1, 1, 6]
# ]
# Example 2:

# Input: candidates = [2,5,2,1,2], target = 5,
# A solution set is:
# [
#   [1,2,2],
#   [5]
# ]

=begin
In this case you can only use each number once

=end


# this isn't working!!!!!!!!!

def combination_sum2(candidates, target)
  result = []
  candidates.sort!
  candidates.each_index do |i|
    combination_sum2_helper(candidates, target, result, [], i)
  end
  result
end

def combination_sum2_helper(candidates, target, result, temp, position )
  p "candidates=#{candidates}, temp=#{temp} index: #{position}"
  if temp.sum == target
    result << temp.clone()
    return
  end

  if temp.sum >= target
    return
  end

  sub_array = candidates[position..-1]
  if sub_array
    sub_array.each_with_index do |n, i|
      return if n > target
      next if i == position && sub_array[i] == candidates[position]
      temp << n
      combination_sum2_helper(sub_array, target, result, temp, position + 1)
      temp.pop()
      position += 1
    end
  end
end



p combination_sum2([1,2,7,6,1,5], 8)