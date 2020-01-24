class ListNode
  attr_accessor :val, :next
  def initialize(val)
      @val = val
      @next = nil
  end
​
  def values
    result = []
    curr = self
    while curr
      result.push(curr.val)
      curr = curr.next
    end
    result
  end
​
  def ==(list2)
    values == list2.values
  end
end
​
def make_list(values)
  return nil if values.empty?
  head = ListNode.new(values[0])
  curr = head
  values[1..-1].each do |val|
    curr.next = ListNode.new(val)
    curr = curr.next
  end
  head
end
​a
# # sample usage
# l1 = make_list([1, 2, 3, 4])
# l2 = make_list([1, 2, 3])
# ​
# p l1.values # [1, 2, 3, 4]
# p l2.values # [1, 2, 3]
# puts l1 == l2 # false
# ​
# l2.next.next.next = ListNode.new(4)
# p l2.values # [1, 2, 3, 4]
# puts l1 == l2 # true