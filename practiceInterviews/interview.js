/* Problem
Given two arrays, write a function to compute their intersection.

Example 1:

Input: nums1 = [1,2,2,1], nums2 = [2,2]
Output: [2]

Example 2:
Input: nums1 = [4,9,5], nums2 = [9,4,9,8,4]
Output: [9,4]

Note:
Each element in the result must be unique.
The result can be in any order.



*/


/*
Intersection - all common values, but only once
result can be in any order

option: hash -
option: sort() -


nums1 = [4,9,5,9] o(n)
nums2 = [9,4,9,8,4] o(m)

{
 4: 3
 9: 3
 5: 1
 8: 1 // don't add it
}

O(keys)

array from any number that is greater = 2

*/

/* sorted
[4,9,5,9]
[9,4,9,8,4]

sort()


[4, 5, 9, 9 ] -n
[3, 4, 4, 9, 9] -m
answer: [4, 9]

   m
[2,4, 5, 9, 9 ]

[3, 4, 4, 9, 9]
    n


 conditions
 if n is less then m move it forward
 if they are equal add to the result
  - keep m where it is
  - incremenent n until n != m
  - then increment m

if m is less than increment m
break at end of the array

*/

const findIntersection = (arr1, arr2) => {
  const results = [];
  let m = 0;
  let n = 0;

  while (arr2[n]) {
    if (arr2[n] < arr1[m]) {
      n += 1
    } else if (arr2[n] === arr1[m]) {
      while (arr2[n] === arr1[m]) {
        n += 1
      }
      results.push(arr1[m])
      m += 1
    } else {
      m += 1
    }
  }
  return results;
}


let arr1 = [4, 5, 9, 9 ]
let arr2 = [3, 4, 4, 9, 9]
findIntersection(arr1, arr2)