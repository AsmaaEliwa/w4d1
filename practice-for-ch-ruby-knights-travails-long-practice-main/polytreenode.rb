class PolyTreeNode
    attr_reader "value" ,"parent","children"
    def initialize(value)
      @value=value
      @parent=nil
      @children=[]
    end
  
  
    def parent=(p_node )
      
      return if @parent==p_node
      
      if !@parent.nil?
      @parent.children.delete(self)
      end
          
    
      @parent= p_node
      if !p_node.nil? && !p_node.children.include?(self)
      @parent.children<<self
      end
  
    end
  
  def add_child(child)
      if !@children.include?(child)
      child.parent=(self)
  
          # self.children<<child
      else
          raise " an error"
    end
  end
  
  def remove_child(child)
      if !children.include?(child)
          raise " an error"
      end
      child.parent = nil
  
  end
  
  def dfsend(path)
      return self if self.value==value
  end
end