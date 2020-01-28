# Given a string s, partition s such that every substring of the partition is a palindrome.

# Return all possible palindrome partitioning of s.

# Example:

# Input: "aab"
# Output:
# [
#   ["aa","b"],
#   ["a","a","b"]
# ]


=begin
   deadend condition = end of array
   success condition = subarray is isPalindrome

=end

# temp     -> current path of exploration
# results  -> successful finds

# solution provided by Tahnr
def partition(s)
  result = []
  partition_helper(s, result, [], 0)
  result
end


def partition_helper(string, result, solution, position)

if position == string.length
  result << solution.clone unless solution.empty?
else
  i = position
  while i < string.length do
    substring = string[position..i]
    if substring == substring.reverse
      solution << substring
      partition_helper(string, result, solution, i + 1)
      solution.pop
    end
    i += 1
  end
end
end


def is_palindrome?(array)
  array.reverse == array
end

p partition("aab")