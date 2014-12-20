require 'reinject'
require 'reinject_recursive'

describe Array do
  
  context 'with a block' do

    it "can sum numbers" do
      expect([1, 2, 3, 4].inject{|memo, item| memo + item}).to eq 10
      expect([1, 2, 3, 4].reinject{|memo, item| memo + item}).to eq 10
      expect([1, 2, 3, 4].reinject_recursive{|memo, item| memo + item}).to eq 10
    end

    it "can minus numbers" do
      expect([1, 2, 3, 4].inject{|memo, item| memo - item}).to eq -8
      expect([1, 2, 3, 4].reinject{|memo, item| memo - item}).to eq -8
      expect([1, 2, 3, 4].reinject_recursive{|memo, item| memo - item}).to eq -8
    end

    it "can mutiply numbers" do
      expect([1, 2, 3, 4].inject{|memo, item| memo * item}).to eq 24
      expect([1, 2, 3, 4].reinject{|memo, item| memo * item}).to eq 24
      expect([1, 2, 3, 4].reinject_recursive{|memo, item| memo * item}).to eq 24
    end

  end

  context 'with a symbol' do

    it "can sum numbers" do
      expect([1, 2, 3, 4].inject(:+)).to eq 10
      expect([1,2,3,4].reinject(:+)).to eq 10
      expect([1,2,3,4].reinject_recursive(:+)).to eq 10
    end

    it "can minus numbers" do
      expect([1, 2, 3, 4].inject(:-)).to eq -8
      expect([1, 2, 3, 4].reinject(:-)).to eq -8
      expect([1, 2, 3, 4].reinject_recursive(:-)).to eq -8
    end

    it "can mutiply numbers" do
      expect([1, 2, 3, 4].inject(:*)).to eq 24
      expect([1, 2, 3, 4].reinject(:*)).to eq 24
      expect([1, 2, 3, 4].reinject_recursive(:*)).to eq 24
    end

  end

  context 'with an argument and a block' do

    it "can sum numbers with an initial value" do
      expect([1, 2, 3, 4].inject(10){|memo, item| memo + item}).to eq 20
      expect([1, 2, 3, 4].reinject(10){|memo, item| memo + item}).to eq 20
      expect([1, 2, 3, 4].reinject_recursive(10){|memo, item| memo + item}).to eq 20
    end

    it "can minus numbers with an initial value" do
      expect([1, 2, 3, 4].inject(10){|memo, item| memo - item}).to eq 0
      expect([1, 2, 3, 4].reinject_recursive(10){|memo, item| memo - item}).to eq 0
    end

    it "can multiply numbers with an initial value" do
      expect([1, 2, 3, 4].inject(10){|memo, item| memo * item}).to eq 240
      expect([1, 2, 3, 4].reinject(10){|memo, item| memo * item}).to eq 240
      expect([1, 2, 3, 4].reinject_recursive(10){|memo, item| memo * item}).to eq 240
    end

  end

  context 'with an argument and a symbol' do

    it "can sum numbers with an initial value" do
      expect([1, 2, 3, 4].inject(10, :+)).to eq 20
      expect([1, 2, 3, 4].reinject(10, :+)).to eq 20
      expect([1, 2, 3, 4].reinject_recursive(10, :+)).to eq 20
    end

    it "can minus numbers with an initial value" do
      expect([1, 2, 3, 4].inject(10, :-)).to eq 0
      expect([1, 2, 3, 4].reinject(10, :-)).to eq 0
      expect([1, 2, 3, 4].reinject_recursive(10, :-)).to eq 0
    end

    it "can sum numbers with an initial value" do
      expect([1, 2, 3, 4].inject(10, :*)).to eq 240
      expect([1, 2, 3, 4].reinject(10, :*)).to eq 240
      expect([1, 2, 3, 4].reinject_recursive(10, :*)).to eq 240
    end

  end

  context 'with letters' do
    
    it 'should be able to concatenate letters' do 
      expect(["A","B","C"].inject{|memo,item| memo + item}).to eq "ABC" 
      expect(["A","B","C"].reinject{|memo,item| memo + item}).to eq "ABC" 
      expect(["A","B","C"].reinject_recursive{|memo,item| memo + item}).to eq "ABC" 
    end

    it 'should be able to concatenate letters using :+ symbol' do 
      expect(["A","B","C"].inject(:+)).to eq "ABC" 
      expect(["A","B","C"].reinject(:+)).to eq "ABC" 
      expect(["A","B","C"].reinject_recursive(:+)).to eq "ABC" 
    end

    it 'should be able to concatenate letters and have a base memo value' do 
      expect(["A","B","C"].inject("X"){|memo,item| memo + item}).to eq "XABC" 
      expect(["A","B","C"].reinject("X"){|memo,item| memo + item}).to eq "XABC" 
      expect(["A","B","C"].reinject_recursive("X"){|memo,item| memo + item}).to eq "XABC" 
    end

    it 'should be able to concatenate letters with a base & using :+ symbol' do 
      expect(["A","B","C"].inject("Y",:+)).to eq "YABC" 
      expect(["A","B","C"].reinject("Y",:+)).to eq "YABC" 
      expect(["A","B","C"].reinject_recursive("Y",:+)).to eq "YABC" 
    end

  end

end