class BinaryTreeNode #note that this just determines the relationship between
  #a parent and 2 child nodes

  attr_accessor :value
  attr_reader :left, :right

  def initialize(root)
    @root = root
    @left  = nil
    @right = nil
  end

  def insert_left(value)
    @left = BinaryTreeNode.new(value)
    return @left
  end

  def insert_right(value)
    @right = BinaryTreeNode.new(value)
    return @right
  end

  def binary_search_tree_checker(height)
    #is this valid
      #are all the nodes to the left less than the root node
      #are all the nodes to the right more than the root node
    #start at root node
    #don't like using @root like this, but it
    #check left side of tree

     # if the current node does not exist--this is at the end of the tree
    #returns true if we make it through the tree and bottom out
    root_node = @root
    if @root == nil
      return true
    elsif @left != nil #if there is a left node and a root node
      if @root > @left #checks a node against it's children
        @root = @left #current
        binary_search_tree_checker
      else
        binary_search_tree_checker
      end
    elsif @right != nil  #if there is a right node
      if @root < @right #if root is less than the node we're checking
        @root = @right #now
        binary_search_tree_checker
      else
        binary_search_tree_checker
      end
    else
      return false
    end
  end

end
