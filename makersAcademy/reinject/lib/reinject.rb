class Array

  def reinject(memo=nil,&block)
    array = self
    memo ||= array.shift
    
    if memo.is_a?(Symbol)
      block = memo.to_proc
      memo = array.shift 
    end
    
    array.size.times do
      memo = block.call(memo,array.shift)
    end
    memo
  end
  
end

p [1,2,3].reinject(0) {|memo, nr| memo + nr}
p ["A","B","B"].reinject {|memo, str| memo + str}
p ["A","B","B"].reinject(:+)
p [1,2,3,4].reinject(:+)
