=begin
Given a binary tree, flatten it to a linked list in-place.

For example, given the following tree:

    1
   / \
  2   5
 / \   \
3   4   6
The flattened tree should look like:

1
 \
  2
   \
    3
     \
      4
       \
        5
         \
          6


Diagram in Squid
MENTAL MODEL
Root - Left - Right - Pre order traveral

Input a tree
Output a linked list (return the head)

 Keep track of the tail as you go down the tree at each level
   add the root to the tree
   then move left
when there are no more nodes left

   then make tail.next right and process the the right side

=end


def flatten(root)


end