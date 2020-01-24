# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {ListNode}


=begin

1 - 1 - 3 - 3 - 4 - 4 - 5

    c   n
C   n
1 - 3 - 4 - 4 - 5 - null


while next exists
    current value != next.value

else
  current.next = next.next
  next = next.ne


=end

class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end



=begin
 p   c   n
 d - 1 - 1  - nil

 p   c        n
 d - 1 - - - nil
         1

 p   c        cp  n // gives error
 d - 1 - - - nil
     H   1

# I didn't get to the write code but I think the solution is in teh right area.

A nested while loop that keeps deleting next while it matches current.

Once that finishes then break out and delete current.

Then move on.

The small cases broke it.

=end


def delete_duplicates(head)
  return nil if head.nil?
  return head if head.next.nil?

  dummy, dummy.next = ListNode.new(nil), head
  prev, curr, _next = dummy, head, head.next

  while _next
    if curr.val != _next.val
      prev = prev.next
      curr = curr.next
      _next = _next.next
    else
      while curr.val == _next.val do
        break if _next.next.nil?

        curr.next = _next.next
        _next = curr.next
      end
      prev.next = _next
      curr = _next
      break if curr.nil?
      _next = curr.next
    end
  end

  curr.nil? ?  nil :dummy.next || nil
end


