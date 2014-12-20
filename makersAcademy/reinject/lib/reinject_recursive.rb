class Array

  def reinject_recursive(memo=nil, sym=nil, &block)
     array = self
     memo ||= array.shift

    if memo.is_a?(Symbol)
      sym = memo 
      memo = array.shift 
    end

    block = sym.to_proc if sym
    

     array.unshift(memo) # adds memo at the beggining of the array

     recursive_reinject_helper(array,block)
  end  

  def recursive_reinject_helper(array,block)
    return array.first if array.size <= 1
    array.unshift( block.call(array.shift,array.shift) )
   
    recursive_reinject_helper(array, block) 
  end

  # This is the same as the method before
  # long version for showing the logic of recursive reinject.
  # Feel free to ignore it:

  # def recursive_reinject_long_version(array,accumulator=nil,block)
  #   return array.first if array.size <= 1
    
  #   accumulator ||= block.call(array.shift,array.shift)
  #   array.unshift(accumulator)
    
  #   recursive_reinject_long_version(array, block) 
  # end

end

