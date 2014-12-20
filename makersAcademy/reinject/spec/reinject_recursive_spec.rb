require 'reinject_recursive'

describe Array do 

  it 'can add numbers together' do
    expect( [1,2,3,4].inject { |memo,item| memo + item } ).to eq 10
    expect( [1,2,3,4].reinject { |memo,item| memo + item } ).to eq 10
  end
  
  it 'can substract numbers' do
    expect( [1,2,3,4].inject { |memo,item| memo - item} ).to eq -8
    expect( [1,2,3,4].reinject { |memo,item| memo - item} ).to eq -8
  end

  it 'can multiply numbers' do
    expect( [1,2,3,4].inject { |memo,item| memo * item } ).to eq 24
    expect( [1,2,3,4].reinject { |memo,item| memo * item } ).to eq 24
  end

  context 'with a symbol' do

    it 'can add numbers together with a starting point' do
      expect( [1,2,3,4].inject(10) { |memo,item| memo + item } ).to eq 20 
      expect( [1,2,3,4].reinject(10) { |memo,item| memo + item } ).to eq 20 
    end

    it 'can remove numbers, and have a starting point' do
      expect( [1,2,3,4].inject(10) { |memo,item| memo - item } ).to eq 0 
      expect( [1,2,3,4].reinject(10) { |memo,item| memo - item } ).to eq 0 
    end

  end

  context 'with letters' do

    it 'can concatenate letters into a string' do
      expect( ["A","B","C"].inject { |memo,item| memo + item } ).to eq "ABC" 
      expect( ["A","B","C"].reinject { |memo,item| memo + item } ).to eq "ABC" 
    end

  end

end