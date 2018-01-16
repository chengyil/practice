require_relative 'spec_helper'
describe Item do
  let(:range) { 100 }
  let(:item) { Item.new(range) } 
  it 'should be be less than specified range' do
    expect(item.value < range).to be true
  end

  it 'should be comparable with integer' do
    expect(item < range).to be true
  end

  it 'should be comparable with item' do
    expect(item == item).to be true
  end
end
