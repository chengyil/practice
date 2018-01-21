require_relative File.expand_path('../../../spec_helper.rb',__FILE__)
describe Sort::Recursive::Bubble do
  it 'should return same number of element back' do
    bag = [1,2,3]
    expect(described_class.sort(bag).size).to be bag.size 
  end

  it 'should have 0 swap if bag has lesser than 2 items' do
    bag = [1]
    expect(described_class.sort(bag).swaps).to be 0
  end

  it 'should sort 10..1 to 1..10' do
    bag = (1..10).to_a.reverse 
    expect(described_class.sort(bag).bag.to_s).to eq (1..10).to_a.to_s
  end

  it 'should sort 10..1 should have 45 swap' do
    bag = (1..10).to_a.reverse 
    expect(described_class.sort(bag).swaps).to be 45 
  end
end
