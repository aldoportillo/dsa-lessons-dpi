class ListNode
  attr_accessor :val, :next

  def initialize(val = 0, _next = nil)
    @val = val
    @next = _next
  end

  def self.to_list(array)
    return nil if array.empty?

    head = ListNode.new(array.first)
    current = head
    array[1..].each do |value|
      current.next = ListNode.new(value)
      current = current.next
    end
    head
  end

  def self.to_array(list)
    array = []
    while list
      array << list.val
      list = list.next
    end
    array
  end
end

