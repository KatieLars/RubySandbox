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
    #current_node = @root
    #check left side of tree
    counter = -1
    until counter == height
      current_node = @root
      if current_node > @left
        current_node = @left
        counter += 1
      #loop again
      elsif current_node < @left || current_node == @left
        return false
      end
    end
    #right side
    counter = -1
    until counter == height
      current_node = @root
      if current_node < @right
        current_node = @right
        counter += 1
        #loop again
      elsif current_node < @right || current_node == @right
        return false
      end
    end

  end
end
