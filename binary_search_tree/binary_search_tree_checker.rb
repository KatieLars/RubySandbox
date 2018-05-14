# --method that checks to see tree is balanced
# --balanced means we can search for a given value in a tree in O(lg n) time
#--terminology:
  #--Perfect tree: every level of the tree is full (each parent node has 2 children)
    #--the total number of nodes doubles as we move down the tree
    #--the number of nodes on the last level equals the sum total of the number of nodes
      #on all other levels + 1
    #--half of our nodes are on the last level
#logs: log10(100) means what power you must raise 10 to to get 100 (2)
#logs can be used to bring down exponents: log2(2^h)--the 2s cancel each other out
  #and now you're left with h (be sure to balance both sides)
  #--Binary Search Tree:
    #--parent node's value is greater than ALL values in the LEFT subtree
    #--parent node's value is lesser than ALL values in the RIGHT subtree
def number_of_nodes(levels)
  #each level contains at least 2 nodes, except for the first level which contains 1
  #nodes = (2^levels-1)*2 - 1
  #nodes = (2^levels-1) * 2^1 -1
  #nodes = (2^levels-1+1)-1
  nodes = 2^levels -1
end

def level_of_tree(nodes)
  #nodes = 2^levels - 1 (working backwards from above)
  #nodes + 1 = 2^levels
  #log2(nodes + 1) = log2(2^levels)
  levels = log2(nodes+1)
end


def binary_search_tree_checker(value)
  #enters the value we are searching for
end
