require 'debug'

# 3 Sum
# Given an array nums of n integers, are there elements a, b, c in nums such that a + b + c = 0?
# Find all unique triplets in the array which gives the sum of zero.
# Notice that the solution set must not contain duplicate triplets.

# Example
# Input: [-1, 0, 1, 2, -1, -4]
# Output: [[-1, 0, 1], [-1, -1, 2]]

# First steps
# What data type is our input? Type: Array
# What data type is our output? Type: 2D Array
# What are our edge cases?
# 1. Must not contain any duplicate triplets
# 2. Array of size 1 or 2 should return an empty array

def brute_force_three_sum(nums)
    result = []

    raise "input must be an array" unless nums.is_a?(Array)

    (0...nums.length).each do | i | 
        (i + 1...nums.length).each do | j |
            (j + 1...nums.length).each do | k |

                if (nums[i] + nums[j] + nums[k] == 0)
                    triplet = [nums[i], nums[j], nums[k]].sort!
                    result.push(triplet)
                end
            end
        end
    end

    return result.uniq
end
  
pp three_sum([-1, 0, 1, 2, -1, -4])
# Time Complexity: O(n)^3


#Optimal approaches

def hashed_three_sum(nums)

end

# Time Complexity O(n)
# Space Complexity O(n) -> Look at 2sum -> hash


def most_optimal_three_sum(nums)

end

# Time Complexity O(n)
# Space Complexity O(1) -> send it or book me for review - 



