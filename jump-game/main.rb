require 'debug'

def can_jump(nums)

    pointer = nums.length - 1

    (nums.length - 2).downto(0) do |i|
        if nums[i] + i >= pointer
            pp "Pointer Moved to #{i} because #{nums[i]} + #{i} >= our current pointer of #{pointer}"
            pointer = i
        end
    end

    return pointer === 0

end

pp can_jump([2, 3, 1, 0, 4])

    # if depth === nums.length - 1 return true

    # current_index = 0

    # # TODO: Conditional
    # can_jump(0..nums[i], depth + 1)

    # current_index++
    # # nums.each_with_index do |num, i|

    # #     (1..num).each_with_index do |node, j|
    # #         # pp "#{num} at index #{i} with node #{node}"

    # #         # if node == nums.length - 1 
    # #         #     return true
    # #         # end


    # #     end

    # # end

    # # return depth == nums.length - 1
























# pointer = nums.length - 1

# (nums.length - 2).downto(0) do |i|
#   pointer = i if i + nums[i] >= pointer
# end

# return pointer == 0