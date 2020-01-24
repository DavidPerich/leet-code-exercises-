  # if word length is 0 or 1  return true
  # if first and last chars are equal
    # slice off those chars and call is_palindrome on the reduced word
  # if they aren't equal then it cannot be a palindrome so return false

  # h e l l o
  # 1       1         First call is not equal so it will return fasle

  # h a n "" n a h
  # 1 2 3 4  3 2 1     is valid as the recursion will reach a string that is 0 length which returns true

def is_palindrome(word)
  return true if word.length <= 1
  return is_palindrome(word[1..-2]) if word[0] == word[-1]
  false
end

p is_palindrome("hannah")
p is_palindrome("hanbah")
p is_palindrome("hello")
p is_palindrome("")
p is_palindrome("racecar")