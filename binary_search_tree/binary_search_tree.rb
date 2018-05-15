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

  def binary_search_tree_checker
    #is this valid
      #are all the nodes to the left less than the root node
      #are all the nodes to the right more than the root node
    #TOMORROW: steps for making recursive
      #1. make it non-recursive
      #2. Exit strategy (what will get us out of the loop)
      #3. recursive method call
end



end
