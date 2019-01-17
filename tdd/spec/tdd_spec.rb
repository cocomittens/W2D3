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

describe "#two_sum" do
  it "returns the index of pairs that sum to zero" do
    expect([3, 4, -4, 6].two_sum).to eq([[1, 2]])
  end

  it "can return multiple pairs" do
    expect([3, -3, 5, -5].two_sum).to eq([[0, 1], [2, 3]])
  end

  it "sorts by original index of first elements, then second" do
    expect([3, 5, -3, 3, -5, -5].two_sum).to eq([[0, 2], [1, 4], [1, 5], [2, 3]])
  end
end

describe "#my_transpose" do
    let(:rows){
    [
        [0, 1, 2],
        [3, 4, 5],
        [6, 7, 8]
    ]
    }
    let(:cols){
    [
        [0, 3, 6],
        [1, 4, 7],
        [2, 5, 8]
    ]
    }
    it "works with a 2x2 matrix" do
        a = [[1, 5], [7, 2]]
        b = [[1, 7], [5, 2]]
        expect(a.my_transpose).to eq(b)
    end

    it "converts a 3x3 matrix from rows to columns" do
        expect(rows.my_transpose).to eq(cols)
    end

    it "converts a 3x3 matrix from columns to rows" do
        expect(cols.my_transpose).to eq(rows)
    end

    
end

describe TowersOfHanoi do
  let(:game) { TowersOfHanoi.new }
  let(:towers) { game.towers }
  describe "#move" do


    before(:each) do
      game.move(0, 1)
    end

    it "pops the disc off of from_tower" do
      expect(towers[0]).to eq([3, 2])
    end

    it "pushes the disc onto to_tower" do
      expect(towers[1]).to eq([1])
    end

    it "doesn't change uninvolved towers" do
      expect(towers[2]).to be_empty
    end
  end
end