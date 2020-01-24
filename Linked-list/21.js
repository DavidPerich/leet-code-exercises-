// # Merge two sorted linked list
// # Merge two sorted linked lists and return it as a new list. The new list should be made by splicing together the nodes of the first two lists.


// # // 1->2->4
    //  1->3->4
// # Output: 1->1->2->3->4->4


// create a fake head value with a null next property
// create a dummy that references the head - so we can keep track of the starting head, as well as move down the link-list

// while l1 and l2 are not null
  // if list 1 value is <= list2 value then add that as the dummy.next
  // if list 2 value is less than list1 value than as that as dummy.next

  // either way - move dummy to be equal to dummy.next

  // once you reach the end of one list - then the rest of the other list gets added to the end
  // we can do this just by making dummy.next equal to the current reference of the non empty lsit

  // 1->2->4
  //  1->3->4


// list1 - 1->2->4
// list 2  1->3->4

// updatedList progression
// dummy  = {val: -1, next: null}
// l1.val is <= l2.val so dummy.next = {val: -1, next: 2}
// dummy = dummy.next
// bnack to the top of the while loop
// l1.val is NOT less than l2.val so dummy.next = l2
  // l2 = l2.next



var mergeTwoLists = function(l1, l2) {
    const head = {val: -1, next: null }
    let dummy = head

    while (l1 && l2 ) {
      if (l1.val <= l2.val) {
        dummy.next = l1
        l1 = l1.next
      } else { // l2 must be less than l1
        dummy.next = l2
        l2 = l2.next
      }
      dummy = dummy.next
    }

    dummy.next = l1 || l2

    return head.next
};
