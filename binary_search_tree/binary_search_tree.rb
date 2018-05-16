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
    current_node = @root
    left_nodes = []
    right_nodes = []
    all_nodes = check_nodes(current_node, left_nodes, right_notes)
    if all_nodes[0].max < @root && all_nodes[1].min > @root
      #if the highest value in the left branch is less than the root
      #and the lowest value in the right branch is greater than the root
      #we have a valid search tree
      return true
    else
      return false
    end
  end

def check_nodes(current_node, left_nodes, right_nodes)
  if @left != nil && current_node > @left #if there is a left node if current node is greater than node on left
    current_node = @left #current_node is left node
    left_nodes << current_node
    check_nodes(current_node)
  elsif @right != nil && current_node < @right #right side of tree
    current_node = @right #current_node is right node
    right_nodes << current_node
    check_nodes(current_node)
  elsif @left == nil && @right == nil #no more branches
    all_nodes = [left_nodes, right_nodes]
    return all_nodes #returns an array of 2 arrays: first is left_nodes, second is right_nodes
  end
end

end
