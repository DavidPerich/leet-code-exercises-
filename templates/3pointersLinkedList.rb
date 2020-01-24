def something
  return nil if head.nil?
  return head if head.next.nil?

  dummy, dummy.next = Node.new, head
  prev, curr, next = dummy, head, head.next

  while !next.nil?
    # do some comparison
    # adjust the pointers
  end

  # return new head for in place solution
end