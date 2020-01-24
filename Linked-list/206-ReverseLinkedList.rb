# 206. Reverse Linked List
# Reverse a singly linked list.

# Example:

# Input: 1->2->3->4->5->NULL
# Output: 5->4->3->2->1->NULL
# Follow up:

# A linked list can be reversed either iteratively or recursively. Could you implement both?

# def something
#   return nil if head.nil?
#   return head if head.next.nil?

#   dummy, dummy.next = Node.new, head
#   prev, curr, next = dummy, head, head.next

#   while !next.nil?
#     # do some comparison
#     # adjust the pointers
#   end

#   # return new head for in place solution
# end


=begin
   p   c   n
#  D - 1 - 2 - 3 - 4 - 5

       p   c   n
#  D - 2 - 1 - 3 - 4 - 5

           p   c   n
#  D - 3 - 2 - 1 - 4 - 5

               p   c   n
#  D - 4 - 3 - 2 - 1 - 5
=end
