# 28. stStr()

def str_str(haystack, needle)
  return 0 if needle.size.zero?
  h = haystack.size
  n = needle.size
  (0..h - n).each do |i|
    (0..n - 1).each do |j|
      break unless haystack[i + j] == needle[j]
      return i if j == n - 1
    end
  end
  -1
end