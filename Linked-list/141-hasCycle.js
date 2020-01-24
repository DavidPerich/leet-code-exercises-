

var hasCycle = function(head) {
  if (head == null) { return false }
  if (head.next == null) { return false }

  let slow = head;
  let fast = head.next;

  while (fast && fast.next) {
    if (fast.val === slow.val) {return true }
    fast = fast.next.next
    slow = slow.next
  }

  return false
};
