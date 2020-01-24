# // 92. Reverse Linked List II
# // Reverse a linked list from position m to n. Do it in one-pass.

# // Note: 1 ≤ m ≤ n ≤ length of list.

# // Example:

# // Input: 1->2->3->4->5->NULL, m = 2, n = 4
# // Output: 1->4->3->2->5->NULL


# // p   c   r
# // D - 1 - 2- 3 - 4 - 5  if current.val != target move forwrad
# //         m      n

# //     p   c  r
# // D - 1 - 2- 3 - 4 - 5 - current val is target. so start = p

# // while r != keep swapping the references



# //     MP  M  p  c   r
# // D - 1 - 2- 3 - 4 - 5 - when r.val - swap reference for current and r - then break and swap references from s to r


def reverse_between(head, m, n)
  return nil if head.nil
  return head if head.next.nil?

end

# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end
