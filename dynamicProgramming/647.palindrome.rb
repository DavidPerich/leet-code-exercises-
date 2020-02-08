=begin

NOT COMPLETE



Given a string, your task is to count how many palindromic substrings in this string.

The substrings with different start indexes or end indexes are counted as different substrings even they consist of same characters.

Example 1:

Input: "abc"
Output: 3
Explanation: Three palindromic strings: "a", "b", "c".


Example 2:

Input: "aaa"
Output: 6
Explanation: Six palindromic strings: "a", "a", "a", "aa", "aa", "aaa".


Note:

The input string length won't exceed 1000.

rules
palindrome = string forward is the same as string reverse
single letters count as a palindrome
the same palindrome counts twice if the index positions are different.


output: count of palindromes

0
01
012
0123
01234
1
12
123
1234
0



[a, a, a ]
 0  1  2

 012
 01
 0
 1
 234
 2
 34
 3
 4


 base case to return a single character - which will be a palindrome and add to the count

  is_palindrome
    left and right pointers
    if left and right are the same move in
    if they reach other or one away then that is a palindrome
    if at any point before then they are not equal then it cannot be a palindrome






=end


def count_substrings(s)
   return count_substrings_helper(s)

end

def count_substrings_helper(s)
  count = 0
  if is_palindrome?(s)
    count += 1
  end



  mid = s.length / 2
  count += count_substrings_helper(s[0..mid])   # s[0..1] s
  count += count_substrings_helper(s[mid..-1])  # s[1..-1]
  return count
end

def is_palindrome?(string)
  p string
  string.reverse == string
end

p count_substrings("aaa")



