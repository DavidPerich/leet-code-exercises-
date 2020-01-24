Given a linked list, determine if it has a cycle in it.

To represent a cycle in the given linked list, we use an integer pos which represents the position (0-indexed) in the linked list where tail connects to. If pos is -1, then there is no cycle in the linked list.

Input: head = [3,2,0,-4], pos = 1
Output: true
Explanation: There is a cycle in the linked list, where tail connects to the second node. so -4 connects to to 2

Input: head = [1,2], pos = 0
Output: true
Explanation: There is a cycle in the linked list, where tail connects to the first node. 2 connects to 1


## Solution pattern - slow runner / fast runners

If there is a loop then the fast runner will catch the slow runner and not reach nil

[3 -> 2 ->  0 -> -4]
       \_________/

fs
[3 -> 2 ->  0 -> -4]
       \_________/

      s     f
[3 -> 2 ->  0 -> -4]
       \_________/

      f      s
[3 -> 2 ->  0 -> -4]
       \_________/     at this step the fast runner hits the loop and goes                    back to the second node

                  sf
[3 -> 2 ->  0 -> -4]
       \_________/   The slow runner and fast runner are at the same point                    which means there must be a loop in the node list


### smaller example

[1 -> -4]
\_____/

 sf
[1 -> -4]
\_____/

 f     s    the fast runner immediately loops back to the head
[1 -> -4]
\_____/


 f     s
[1 -> -4]
\_____/     the slow runner loops around to the head, but the fast runner                   catches it by looping a second time

### fail case example
 sf
[3 -> 2 ->  0 -> -4 -> nil ]

      s     f
[3 -> 2 ->  0 -> -4 -> nil]

            s           f
[3 -> 2 ->  0 -> -4 -> nil]  The fast runner reachs nil - which means there                                 is no loop in the linked list

### coded solution


```js
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
```