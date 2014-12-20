require 'reinject'

describe Array do
  
  context 'with a block' do

    it "can sum numbers" do
      expect([1, 2, 3, 4].inject{|memo, item| memo + item}).to eq 10
      expect([1, 2, 3, 4].reinject{|memo, item| memo + item}).to eq 10
    end

    it "can minus numbers" do
      expect([1, 2, 3, 4].inject{|memo, item| memo - item}).to eq -8
      expect([1, 2, 3, 4].reinject{|memo, item| memo - item}).to eq -8
    end

    it "can mutiply numbers" do
      expect([1, 2, 3, 4].inject{|memo, item| memo * item}).to eq 24
      expect([1, 2, 3, 4].reinject{|memo, item| memo * item}).to eq 24
    end

  end

  context 'with a symbol' do

    it "can sum numbers" do
      expect([1, 2, 3, 4].inject(:+)).to eq 10
      expect([1,2,3,4].reinject(:+)).to eq 10
    end

    it "can minus numbers" do
      expect([1, 2, 3, 4].inject(:-)).to eq -8
      expect([1, 2, 3, 4].reinject(:-)).to eq -8
    end

    it "can mutiply numbers" do
      expect([1, 2, 3, 4].inject(:*)).to eq 24
      expect([1, 2, 3, 4].reinject(:*)).to eq 24
    end

  end

  context 'with an argument and a block' do

    it "can sum numbers with an initial value" do
      expect([1, 2, 3, 4].inject(10){|memo, item| memo + item}).to eq 20
      expect([1, 2, 3, 4].reinject(10){|memo, item| memo + item}).to eq 20
    end

    it "can minus numbers with an initial value" do
      expect([1, 2, 3, 4].inject(10){|memo, item| memo - item}).to eq 0
      expect([1, 2, 3, 4].reinject(10){|memo, item| memo - item}).to eq 0
    end

    it "can multiply numbers with an initial value" do
      expect([1, 2, 3, 4].inject(10){|memo, item| memo * item}).to eq 240
      expect([1, 2, 3, 4].reinject(10){|memo, item| memo * item}).to eq 240
    end

  end

  context 'with an argument and a symbol' do

    xit "can sum numbers with an initial value" do
      expect([1, 2, 3, 4].inject(10, :+)).to eq 20
      expect([1, 2, 3, 4].reinject(10, :+)).to eq 20
    end

    xit "can minus numbers with an initial value" do
      expect([1, 2, 3, 4].inject(10, :-)).to eq 0
      expect([1, 2, 3, 4].reinject(10, :-)).to eq 0
    end

    xit "can sum numbers with an initial value" do
      expect([1, 2, 3, 4].inject(10, :*)).to eq 240
      expect([1, 2, 3, 4].reinject(10, :*)).to eq 240
    end

  end

end