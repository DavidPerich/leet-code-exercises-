=begin
# Given an absolute path for a file (Unix-style), simplify it. Or in other words, convert it to the canonical path.

# In a UNIX-style file system, a period . refers to the current directory. Furthermore, a double period .. moves the directory up a level. For more information, see: Absolute path vs relative path in Linux/Unix

# Note that the returned canonical path must always begin with a slash /, and there must be only a single slash / between two directory names. The last directory name (if it exists) must not end with a trailing /. Also, the canonical path must be the shortest string representing the absolute path.



Example 1:

Input: "/home/"
Output: "/home"
Explanation: Note that there is no trailing slash after the last directory name.
Example 2:

Input: "/../"
Output: "/"
Explanation: Going one level up from the root directory is a no-op, as the root level is the highest level you can go.
Example 3:

Input: "/home//foo/"
Output: "/home/foo"
Explanation: In the canonical path, multiple consecutive slashes are replaced by a single one.
Example 4:

Input: "/a/./b/../../c/"
Output: "/c"
Example 5:

Input: "/a/../../b/../c//.//"
Output: "/c"
Example 6:

Input: "/a//b////c/d//././/.."
Output: "/a/b/c"


rules
. = current directory
.. = one directory up
no training /
dubplicate // get reduced to /
if you are at the root directory / and nothing else then you can't go up a directory (..)

/home/ = /home

Stack
/ e m o h /  string =""



/ e m o h  string = "/"
/ e m o   string = "/h"
/ e m   string = "/ho"

/ e   string = "/hom"
/   string = "/home"
/   string = "/home"

if @top of the stack if !conditions for valid pop off and do nothing


Stack


=end

  # if character - build up a string
  # if non character and string isn't "" then add the string to the stack and clear string
  ## if . do nothing
  ## if .. pop from the stack UNLESS that would make the stack empty
  ## if slash do nothing
  # when path is empty then build result string

  # create new stack. Pop off values from stack one and alternate a / until stack 1 is empty
  # while stack 2
    # - pop off building a string

def simply_path(path)
  processing_stack = Stack.new()
  tempString = ""

  i = 0
  while i < path.length - 1
    char = path[i]
    if char == "/"
      processing_stack.push(tempString)
      tempString = ""
    elsif char = "."
      if path[i+]
    elsif char =
    else
     tempString = path[i]
  end
end


class Node
  attr_accessor :val, :next

  def initialize(val)
    @val = val
  end
end

class Stack
  attr_reader :size

  def initialize
    @structure = Node.new('head')
    @size = 0
  end

  def push(val)
    node = Node.new(val)
    node.next = @structure.next
    @structure.next = node
    @size += 1
  end

  def pop
    node = @structure.next

    if node
      @structure.next = node.next
      @size -= 1
    end

    node.val
  end

  def peek
    top_of_stack = @structure.next
    top_of_stack ? top_of_stack.val : nil
  end

  private

  attr_reader :structure
end