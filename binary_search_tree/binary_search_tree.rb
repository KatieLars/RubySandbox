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
    #iteration:
    # 1. Compare the left and right child nodes to the root node
    #   --our current node is the root node
    #   --if the left child node is smaller, we start
    #     checking the left branch
    #   --if there is no left branch && the right node is greater than
    #     the root node, we start checking the right side
    #   --if the left node is greater than the root node
    #     return false
    #   --if the right node is smaller than the root node,
    #     return false
    # 2. Checking the left side:
    #   --our current node is the left node
    #   --Goes through the same steps as no. 1, but checks the left
    #     and right nodes also against the value of the root node
    #   --if the left or right node is greater than the root node,
    #     return false
    #   --if the current node equals nil
    #     return true
    #   3. Checking the right side:
    #     --our current node is the right node
    #     --repeat no. 2
    #is this valid
      #are all the nodes to the left less than the root node
      #are all the nodes to the right more than the root node
    #TOMORROW: steps for making recursive
      #1. make it non-recursive
      #2. Exit strategy (what will get us out of the loop)
      #3. recursive method call
end



end
