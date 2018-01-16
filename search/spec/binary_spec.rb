require_relative 'spec_helper'
describe Binary do
  it 'should return nil, if haystack has no hay' do
    haystack = []
    needle = 1
    expect(Binary.search(needle, haystack)).to be_nil
  end

  it 'should return index 1, for Item 1 in [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]' do
    haystack = (0..9).to_a
    needle = 1
    expect(Binary.search(needle, haystack)).to eql(1)
  end

  it 'should return nil, for Item 10 in [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]' do
    haystack = (0..9).to_a
    needle = 10
    expect(Binary.search(needle, haystack)).to be_nil
  end

  it 'should return nil, for Item -1 in [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]' do
    haystack = (0..9).to_a
    needle = -1
    expect(Binary.search(needle, haystack)).to be_nil
  end

  it 'should return nil, for Item -1 in [0,2,4,..100]' do
    haystack = (0..100).step(2).to_a
    needle = 68 
    expect(Binary.search(needle, haystack)).to eql(34)
  end
end
