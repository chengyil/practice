require_relative 'spec_helper'
describe Needle do
  let(:range) { 100 }
  let(:needle) { Needle.new(range) } 
  it 'should be be less than specified range' do
    expect(needle.value < range).to be true
  end

  it 'should be comparable with integer' do
    expect(needle < range).to be true
  end

  it 'should be comparable with needle' do
    expect(needle == needle).to be true
  end
end
