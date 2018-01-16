require_relative 'spec_helper.rb'
describe Haystack do
  it 'should generate 5 items' do
    haystack = Haystack.generate(5,1)
    expect(haystack.size).to eql 5
  end
  it 'should generate item with value less than 10' do
    haystack = Haystack.generate(500, 10)
    expect(haystack.select{ |i| i >= 10 }.size).to eql 0
  end
end
