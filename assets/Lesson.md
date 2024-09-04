# Reverse a Linked List Lesson

## List Nodes

Linked lists are made up of *list nodes* also referred to as nodes. Each node contains a *value* and a reference to the address of the *next node* in the list. The first node in the list is called the *head* and the last node is called the *tail*. The tail node points to `null` to indicate the end of the list.

Although I mentioned the address, ruby abstracts these into references. 

```ruby

class ListNode
  attr_accessor :val, :next

  def initialize(val = 0, _next = nil)
    @val = val
    @next = _next
  end

  def ListNode.to_array(list)
    array = []
    while list
        array << list.val
        list = list.next
    end
    array
  end

  def ListNode.to_list(array)
    return nil if array.empty?

    head = ListNode.new(array.first)
    current = head
    array[1..].each do |value|
        current.next = ListNode.new(value)
        current = current.next
    end
    head
  end
end
    
```

### Removing an element from a linked list is usually O(N) time complexity like an array unless you have a reference to the previous node such as a doubly linked list. Removing the head node is O(1) time complexity and removing the tail node is O(N) time complexity if you don't have a reference to the tail node.