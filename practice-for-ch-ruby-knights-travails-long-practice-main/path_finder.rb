require_relative "polytreenode"
class KnightPathFinder
    attr_reader "position"
    def initialize(position)
               @root_node=position
               # @self.root_node=PolyTreeNode.new(position)
               @considered_positions=[position]
               # build_move_tree(root_node)
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

   def new_move_positions(pos)
      new_arr = []

      valid_pos = KnightPathFinder.valid_moves(pos)

         valid_pos.each do |array|
            if !@considered_positions.include?(array)
               @considered_positions << array
               new_arr << array
            end

      end
      print @considered_positions
      new_arr

   end





# def new_move_positions(pos)
#     if KnightPathFinder.valid_moves
#     end
# end





end
