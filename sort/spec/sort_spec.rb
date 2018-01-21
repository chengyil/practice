require_relative 'spec_helper'
describe Sort::Sort do
  it 'it should be able to sort with default algorithm and form' do
    bag = [3,2,1]
    expect(described_class.sort(bag).bag.to_s).to eq [1,2,3].to_s
  end

  it 'it should be able to define sort algorithm' do
    bag = [3,2,1]
    expect(described_class.sort(bag, 'insertion').bag.to_s).to eq [1,2,3].to_s
  end

  it 'it should be able to define sort algorithm and form' do
    bag = [3,2,1]
    expect(described_class.sort(bag, 'insertion', 'recursive').bag.to_s).to eq [1,2,3].to_s
  end
end
