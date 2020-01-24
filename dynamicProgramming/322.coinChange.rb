=begin
You are given coins of different denominations and a total amount of money amount. Write a function to compute the fewest number of coins that you need to make up that amount. If that amount of money cannot be made up by any combination of the coins, return -1.

Example 1:

Input: coins = [1, 2, 5], amount = 11
Output: 3
Explanation: 11 = 5 + 5 + 1
Example 2:

Input: coins = [2], amount = 3
Output: -1
Note:
You may assume that you have an infinite number of each kind of coin.


for each coin - calculate all the steps that are less than a previously seen step

not sure how I'll calculate this. Might be able to trade space and say

Calculate all the steps up to target that have not been seen for that coin.

example

Input: coins = [1, 2, 5], amount = 11

Starting from largest coin - calculate the the number of steps and save that in hash where the key is the value and the value is the number of steps it took to get there.

{ 5: 1, 10: 2 }

For second largest coin do the same - but stop if you hit the previously seen number - I'm keeping this sorted for mental model sake even though it may not be

{ 2: 1, 4: 2, 5: 1, 6: 3, 8: 4 10: 2 }

Do that for the final coin in the example. stopping when you reach a previously seen value

{1: 1, 2: 1, 4: 2, 5: 1, 6: 3, 8: 4 10: 2 }

Find the smallest combination that == 11.

for each key


}]

=end