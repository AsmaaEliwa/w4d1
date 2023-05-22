require_relative "polytreenode"
class KnightPathFinder
    attr_reader "position"
    def initialize(position)
            @root_node=position
            node=PolyTreeNode.new(root_node)
            
            @considered_positions=[position]
           
    end
    #  def build_move_tree(root_node)
    #  end

     def self.valid_moves(pos)
        new_arr=[]
        row, col = pos
        valid_positions = [[row+1,col+2],[row-1,col+2],[row-2,col+1],[row+2,col+1], [row+2,col-1],[row-2,col-1],[row+1,col-2],[row-1,col-2]]
        valid_positions.each do |arr|
           if  arr[0]<=7 && arr[0]>=0 && arr[1]<=7 && arr[1]>=0
            new_arr<<arr
        end
        end
        new_arr
     end

# def new_move_positions(pos)
#     if KnightPathFinder.valid_moves
#     end
# end




   
end