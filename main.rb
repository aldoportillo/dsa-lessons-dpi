require_relative 'lib/linked_list'
require 'debug'


# def reverse_list(head)
#     prev = nil
#     current = head

#     while current
#         next_node = current.next # Store the next node so we dont lose reference
#         current.next = prev # Reverses the Pointer

#         prev = current # Moves previous ponter one step forward
#         current = next_node 
#     end

#     return prev
# end

def reverse_list(current, previous=nil)

    return previous if current.nil?
    
    next_node = current.next  # Store the next node so we dont lose reference
    current.next = previous #Reverse the pointer

    reverse_list(next_node, current)

end

def remove_node(head, node)

    prevNode = nil
    current = head

    #Loop through self prev Node 
    while current.val != node
       prevNode = current
       current = current.next
       
       break if current.nil?
    end


    if current.val == node
        if prevNode.nil?
            head = current.next
        else
            prevNode.next = current.next
        end
    end
  
    return head
end

  array = [1,2,3,4,5]
# puts "original: #{array}"
# head = ListNode.to_list(array)
# head = reverse_list(head)
# reversed_array = ListNode.to_array(head)
# puts "reversed: #{reversed_array}"

head = ListNode.to_list(array)
head = remove_node(head, 2)
head = remove_node(head, 1)
new_array = ListNode.to_array(head)


puts "removed : #{new_array}"