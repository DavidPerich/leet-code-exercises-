require_relative '../templates/binaryNode.rb'
require_relative '../templates/Node.rb'


require 'pry'


class BinarySearchTree
  def initialize(val=nil)
    @head = BinaryNode.new(val)
  end

  def add(val)
    node = BinaryNode.new(val)
    if @head.val.nil?
      @head = node
    else
      add_helper(node, @head)
    end
    return node
  end


  def add_helper(node, comparison)
    add_as_child(node, comparison) if no_children?(comparison)

    node.val <= comparison.val ? add_to_left_path(node, comparison) : add_to_right_path(node, comparison)
  end

  def add_as_child(node, comparison)
    if node.val <= comparison.val
      return comparison.left_child = node
    else
      return comparison.right_child = node
    end
  end

  def add_to_left_path(node, comparison)
    if no_left_child?(node)
      return comparison.left_child = node
    else
      return add_helper(node, comparison.left_child)
    end
  end

  def add_to_right_path(node, comparison)
    if no_right_child?(node)
      comparison.right_child = node
    else
      return add_helper(node, comparison.right_child)
    end
  end

  def no_children?(node)
    node.left_child.nil? && node.right_child.nil?
  end

  def no_right_child?(node)
    node.right_child.nil?
  end

  def no_left_child?(node)
    node.left_child.nil?
  end

  def search(val)
    return nil if @head.next.nil?
    search_helper(val, @head.node)
  end

  def search_helper(val, node)

  end

  def include(val)
    # return true
  end

  def add_values(array)

  end
end

tree = BinarySearchTree.new()
tree.add(10)
tree.add(20)
tree.add(5)
p tree
