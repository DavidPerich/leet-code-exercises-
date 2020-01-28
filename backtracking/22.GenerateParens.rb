# Given n pairs of parentheses, write a function to generate all combinations of well-formed parentheses.

# For example, given n = 3, a solution set is:

# [
#   "((()))",
#   "(()())",
#   "(())()",
#   "()(())",
#   "()()()"
# ]

=begin
Conditions for a valid combination
  must start with open paren
  As you build the combination the number of opening brackets must be >= the number of closing brackets. If at any stage there are more ) than ( it means you have an invalid combination.
When the combination is N * 2 in length
    add to results if if it is valid
    else return

=end

require 'pry'
def generate_parenthesis(n)
  results = []
  generate_parenthesis_helper("", results, n * 2)
  results
end

def generate_parenthesis_helper(temp, results, max_length)
  if temp.length == max_length && is_valid?(temp, max_length)
      results << temp.clone()
    return
  end

  ["(", ")"].each do |n|
    next unless is_valid?(temp, max_length)
    temp << n
    generate_parenthesis_helper(temp, results, max_length)
    temp.chop!
  end
end

def is_valid?(str, max_length)
  return true if str.empty?
  open = str.count("(")
  closed = str.count(")")
  return closed <= open && open <= max_length / 2
end

p generate_parenthesis(3)