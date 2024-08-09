require 'rspec'
require_relative '../lib/linked_list'
require_relative '../main.rb'

RSpec.describe 'reverse_list' do

  it 'Reverse Linked List reverses the list 1 -> 2 -> 3 -> nil to 3 -> 2 -> 1 -> nil' do
    array = [1, 2, 3]
    head = ListNode.to_list(array)
    reversed_head = reverse_list(head)
    reversed_array = ListNode.to_array(reversed_head)
    expect(reversed_array).to eq([3, 2, 1])
  end

  it 'Reverse Linked List reverses the list 1 -> 2 -> 3 -> 4 -> 5 -> 6 -> nil to 6 -> 5 -> 4 -> 3 -> 2 -> 1 -> nil' do
    array = [1, 2, 3, 4, 5, 6]
    head = ListNode.to_list(array)
    reversed_head = reverse_list(head)
    reversed_array = ListNode.to_array(reversed_head)
    expect(reversed_array).to eq([6, 5, 4, 3, 2, 1])
  end

  it 'Reverse Linked List handles empty list' do
    head = ListNode.to_list([])
    reversed_head = reverse_list(head)
    expect(reversed_head).to be_nil
  end

  it 'Reverse Linked List handles single element list' do
    array = [1]
    head = ListNode.to_list(array)
    reversed_head = reverse_list(head)
    reversed_array = ListNode.to_array(reversed_head)
    expect(reversed_array).to eq([1])
  end

end
