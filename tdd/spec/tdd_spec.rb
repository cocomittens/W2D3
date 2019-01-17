require 'rspec'
require 'tdd'

describe "#my_uniq" do
  it "returns an array with no duplicates'" do
    expect([1, 2, 1, 3, 3].my_uniq).to eq([1, 2, 3])
  end
  it "maintains its original order" do
    expect([4, 2, 4, 1, 2, 3].my_uniq).to eq([4, 2, 1, 3])
  end
end

describe "#pair_sum" do
  it "returns the index of pairs that sum to zero" do
    expect([3, 4, -4, 6].pair_sum).to eq([[1, 2]])
  end

  it "can return multiple pairs" do
    expect([3, -3, 5, -5].pair_sum).to eq([[0, 1], [2, 3]])
  end

  it "sorts by original index of first elements, then second" do
    expect([3, 5, -3, 3, -5, -5].pair_sum).to eq([[0, 2], [1, 4], [1, 5], [2, 3]])
  end
end