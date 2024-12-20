require 'rspec'
require_relative '../main.rb'

RSpec.describe '#three_sum' do
  it 'returns all unique triplets that sum to zero' do
    nums = [-1, 0, 1, 2, -1, -4]
    expected = [[-1, -1, 2], [-1, 0, 1]]

    expect(three_sum(nums)).to match_array(expected)
  end

  it 'handles an array with no triplets summing to zero' do
    nums = [1, 2, 3, 4]
    expected = []

    expect(three_sum(nums)).to eq(expected)
  end

  it 'handles an array with duplicate numbers but ensures unique triplets' do
    nums = [-2, 0, 0, 2, 2]
    expected = [[-2, 0, 2]]

    expect(three_sum(nums)).to match_array(expected)
  end

  it 'handles an array with fewer than three elements' do
    nums = [1, 2]
    expected = []

    expect(three_sum(nums)).to eq(expected)
  end

  it 'returns an empty array for an empty input' do
    nums = []
    expected = []

    expect(three_sum(nums)).to eq(expected)
  end

  it 'handles an array with all zeros' do
    nums = [0, 0, 0, 0]
    expected = [[0, 0, 0]]

    expect(three_sum(nums)).to eq(expected)
  end

  it 'handles large arrays with multiple triplets' do
    nums = [-4, -2, -2, -2, 0, 1, 2, 2, 2, 3, 3, 4, 6, 6]
    expected = [
      [-4, -2, 6],
      [-4, 0, 4],
      [-4, 1, 3],
      [-4, 2, 2],
      [-2, -2, 4],
      [-2, 0, 2]
    ]

    expect(three_sum(nums)).to match_array(expected)
  end
end
