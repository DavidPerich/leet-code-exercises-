=begin

Given a singly linked list, group all odd nodes together followed by the even nodes. Please note here we are talking about the node number and not the value in the nodes.
You should try to do it in place. The program should run in O(1) space complexity and O(nodes) time complexity.

Example 1:



Input: 1->2->3->4->5->NULL
Output: 1->3->5->2->4->NULL

Example 2:
Input: 2->1->3->5->6->4->7->NULL
Output: 2->3->6->7->1->5->4->NULL

Notes:
- The relative order inside both the even and odd groups should remain as it was in the input.
-The first node is considered odd, the second node even and so on ...


node number not the value
0(1) space - no other data structures. no second list
O(N) - go through once and make changes in place

          estart
                           e
                               o
Input:
       1   2   3   4   5   6   7

       os  es

    1 -> 3 - 5 - 7

     2 -> 4 - 6

conditions
  keep track of the start of both lists
    - odd_start = head
    - even_start = head.next

  condition for small lists
    - if head.next.nil return head
    - if head.next.next.nil return head

  pointers
      odd = head
      even = head.next

  while odd.next and even.next
    - odd.next equals even.next
    - odd ++

    - even.next equals odd.next
    - even ++
  end

  oddpointer.next = even.start


  return head // odd start

break when e || n next is nil

edge

=end

def odd_even_list(head)
  odd_start = head
  even_start = head.next
  odd = head
  even = head.next

  while odd.next && even.next
    odd.next = even.next
    odd = odd.next

    even.next = odd.next
    even = even.next
  end

  odd.next = even_start

  return odd_start
end


