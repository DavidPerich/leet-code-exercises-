Given a set of candidate numbers (candidates) (**without duplicates**) and a target number (target), find all **unique combinations** in candidates where the candidate numbers sums to target.

The same repeated number may be chosen from candidates **unlimited** number of times.

Note:

All numbers (including target) will be **positive integers.**
The solution set must **not contain duplicate combinations.**
Example 1:

Input: candidates = [2,3,6,7], target = 7,
A solution set is:
[
  [7],
  [2,2,3]
]
Example 2:

Input: candidates = [2,3,5], target = 8,
A solution set is:
[
  [2,2,2,2],
  [2,3,3],
  [3,5]
]


I think you need to have two checks as you pop and push

so you can catch the case like 2, 2, 3, 3 = 10 e.g

Target = 10
results = [ ]
array = [ ]
sum = 0
candidates = [2,3,5]

   c
  [2,3,5]
   <!-- p = 0 -->

arr = [2 ], sum = 2

arr = [2,2 ], sum = 4
keep going until sum >= target

arr = [2,2,2,2,2 ], sum = 10

sum == target so push current array to results

results = [[2,2,2,2,2]]
array = [[2,2,2,2,2]].slice() // need a copy of current array so we don't mutate reference in the results
sum = 10

since we've reached sum (or greater than sum) current moves forward

   p c
  [2,3,5]

while arr[0] still contains previous we loop with two checks against sum
  - first we unshift and then check
  - then we add the new current and check

arr = [2,2,2,2]  sum = 8 - add current and check
arr = [2,2,2,2,3]  sum = 12 - add current and check

arr = [2,2,2,3]  sum = 9 - unshift and add current
arr = [2,2,3,3]  sum = 10 - unshift and check sum against target

sum = target so we add the current array to results


