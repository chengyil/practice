require_relative 'spec_helper'
describe Linear do
  it 'should return index 1, for Item 1 in [0, 1, 2, 3, 4]' do
    haystack = (0..4).to_a
    item = 1
    expect(Linear.search(item, haystack)).to eql(1)
  end
  it 'should return index 4, for Item 5 in [10, 2, 3, 0, 5, 1]' do
    haystack = [10, 2, 3, 0, 5, 1]
    item = 5
    expect(Linear.search(item, haystack)).to eql(4)
  end
  it 'should return index nil, for Item 5 in [10, 2, 3, 0, 1]' do
    haystack = [10, 2, 3, 0, 1]
    item = 5
    expect(Linear.search(item, haystack)).to be_nil
  end
  it 'should return index nil, for Item 5 in [10, 2, 3, 0, 1]' do
    haystack = [10, 2, 3, 0, 1]
    item = 5
    expect(Linear.search(item, haystack)).to be_nil
  end
  it 'should return index 0, for Item 5 in [5]' do
    haystack = [5]
    item = 5
    expect(Linear.search(item, haystack)).to eql(0)
  end
end
