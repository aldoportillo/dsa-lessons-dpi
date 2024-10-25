require "rspec"
require "timeout"
require_relative "../main.rb"

RSpec.describe "longest_consecutive_sequence" do
  it "Longest Consecutive Sequence finds the sequence in array [100, 4, 200, 1, 3, 2]" do
    array = [100, 4, 200, 1, 3, 2]
    expect(longest_consecutive_sequence(array)).to eq(4)
  end

  it "Longest Consecutive Sequence finds the sequence in array [0, 3, 7, 2, 5, 8, 4, 6, 0, 1]" do
    array = [0, 3, 7, 2, 5, 8, 4, 6, 0, 1]
    expect(longest_consecutive_sequence(array)).to eq(9)
  end

  it "Longest Consecutive Sequence finds the sequence in array [10, 5, 12, 3]" do
    array = [10, 5, 12, 3]
    expect(longest_consecutive_sequence(array)).to eq(1)
  end

  # The sort method is optizmized in C so it is faster than the set method in Ruby
  # it "Longest Consecutive Sequence handles a large array efficiently, suggesting O(n) time complexity" do
  #   array = (1..1000000).to_a
  #   timeout_seconds = 0.7 # Might need to change during lecture due to less computing power

  #   result = nil
  #   begin
  #     Timeout.timeout(timeout_seconds) do
  #       result = longest_consecutive_sequence(array)
  #     end
  #   rescue Timeout::Error
  #     result = false
  #   end

  #   expect(result).to eq(1000000)
  # end
end
