class Array
  
  def reinject(memo=nil, sym=nil, &block)
    array = self
    memo ||= array.shift
    
    if memo.is_a?(Symbol)
      sym = memo 
      memo = array.shift 
    end

    block = sym.to_proc if sym
    array.size.times { memo = block.call(memo,array.shift) }
    memo
  end

end
