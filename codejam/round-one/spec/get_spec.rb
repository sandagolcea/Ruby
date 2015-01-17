require 'get'

describe 'palindrome check' do

  it 'should return true if the string passed is a palindrome' do
    expect(polindrome("asdsa")).to eq true
  end

  it 'should return false if the string passed is a palindrome' do
    expect(polindrome("asdfeiasa")).to eq false
  end

  it 'should strip all characters except for letters' do
    expect(strip_symbols("ab;cd. ef0")).to eq "abcdef"
  end

it 'should only check alphabetical characters' do
    expect(is_alpha?("a")).not_to eq nil
  end

  it 'should dismiss non-alphabetical characters' do
    expect(is_alpha?("*")).to eq nil
  end

  it 'should dismiss numbers' do
    expect(is_alpha?("0")).to eq nil
  end

end