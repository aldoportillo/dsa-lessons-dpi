# Input: nums type Array
# Output: minimum jumps type Integer

=begin
    if f < i + nums[i] then
set f = i + nums[i]
: [far, i + nums[i]].max 
reassign this to far

if i == e then set 
e = f


    
=end

def jump(nums)

    curr_end = 0
    far = 0
    jumps = 0

    (0...nums.length - 1).each do |i|
        far = [far, i + nums[i]].max

        if i === curr_end
            jumps += 1
            curr_end = far
        end
    end

    jumps
end

pp jump([2,3,1,1,4])
pp jump([ 1, 2, 4, 0, 0, 1, 3 ])