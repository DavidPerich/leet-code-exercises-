function ListNode(val) {
  this.val = val;
  this.next = null;
};
​
const arrToLinkedList = (arr) => {
  const head = new ListNode(arr[0]);
  let curr = head;
​
  for (let i = 1; i < arr.length; i += 1) {
    curr.next = new ListNode(arr[i]);
    curr = curr.next;
  }
​
  return head;
}
​
const linkedListToArr = (head) => {
  const arr = [];
  let curr = head;
​
  while (curr) {
    arr.push(curr.val);
    curr = curr.next;
  }
​
  return arr;
}
​
export { ListNode, arrToLinkedList, linkedListToArr };