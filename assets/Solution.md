# Solutions

## Iterative Approach

```ruby

def reverse_list(head)
  prev = nil
  current = head

  while current
    next_node = current.next  # Store the next node
    current.next = prev       # Reverse the pointer
    prev = current            # Move prev and current one step forward
    current = next_node
  end

  prev  # prev will be the new head of the reversed list
end
```

## Recursive Approach

```ruby

def reverse_list(head, prev = nil)
  return prev if head.nil?      # Base case: return the new head

  next_node = head.next         # Store the next node
  head.next = prev              # Reverse the pointer
  reverse_list(next_node, head) # Recur with the next node as the new head and current node as the previous node
end
```

## Complexity Analysis

Both the iterative and recursive approaches have the same time complexity of O(N), where N is the number of nodes in the linked list. The space complexity is O(1) for the iterative approach and O(N) for the recursive approach due to the recursive call stack.

## Example Usage

```ruby
# Define an array to be converted to a linked list
array = [1, 2, 3, 4, 5]
puts "Original list: #{array.inspect}"

# Convert the array to a linked list
head = ListNode.to_list(array)

# Reverse the linked list
reversed_head = reverse_list(head)

# Convert the reversed linked list back to an array
reversed_array = ListNode.to_array(reversed_head)
puts "Reversed list: #{reversed_array.inspect}"
```
