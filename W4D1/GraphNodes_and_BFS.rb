class GraphNode
    attr_accessor :value, :neighbor
    attr_reader :node
    def initialize(value)
        @value = value
        @neighbor = value, nil, []
    end

    #want the method to be friends with the other nodes in any direction
    def neighbor
        #perhaps dup to avoid messing up neigbor?
        #got idea from parent child node HW
        @neighbor.dup
    end
    
    def neighbor=(new_buddy)
        #check to see if we are already friendsies?
        if self.neigbor.include?(new_buddy)
            return "already buds"
        end
        # 
            @node.neighbor << self.value
    end

    # def add_friend(new_friend)
    #     child.parent = self
    # end

    # def remove_friend(child)
    #     if !self.children.include?(child)
    #         raise 'this node is the root'
    #     end
    #     child.parent = nil  
    # end


end