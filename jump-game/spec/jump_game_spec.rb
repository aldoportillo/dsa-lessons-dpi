require "rspec"
require_relative "../main.rb"

RSpec.describe "can_jump" do
  it "returns true for an array with a single element" do
    expect(can_jump([0])).to be true
  end

  it "returns true for an array where the end can be reached" do
    expect(can_jump([2, 3, 1, 1, 4])).to be true
  end

  it "returns false for an array where the end cannot be reached" do
    expect(can_jump([3, 2, 1, 0, 4])).to be false
  end

  it "returns true for an array with all elements as 1" do
    expect(can_jump([1, 1, 1, 1, 1])).to be true
  end

  it "returns false for an array with a zero that blocks the path" do
    expect(can_jump([1, 0, 1, 0])).to be false
  end

  it "returns true for an array with large jumps" do
    expect(can_jump([5, 9, 3, 2, 1, 0, 2, 3, 3, 1, 0, 0])).to be true
  end

  it "returns false for an array with no possible jumps" do
    expect(can_jump([0, 0, 0, 0])).to be false
  end
end
