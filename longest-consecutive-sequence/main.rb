require 'debug'

# Longest Consecutive Sequence

## Given an unsorted array of integers, find the length of the longest consecutive elements sequence.

## For example,
## Given [100, 4, 200, 1, 3, 2],
## The longest consecutive elements sequence is [100, 4, 200, 1, 3, 2]. Return its length: 4.

## Input: type Array - sequence of integers
## Output: type Integer - represents the length of the longest consecutive elements sequence

arr = [100, 4, 200, 1, 3, 2]

def longest_consecutive_sequence_brute_force(nums)
  nums.sort! # nlog(n)

  current_length = 1 #Could be a issue with scopes
  max_length = 0

  nums.each_with_index do | current_num, i|  # Time: O(n)
    next_num = nums[i + 1]

    next if next_num == nil 

    if current_num == next_num - 1
      current_length = current_length + 1 
    end
    # if current_length > max_length 
    #   max_length = current_length
    # end
    max_length = [max_length, current_length].max #🧼
  end    

  max_length  
end

# Time Complexity Analysis: n + nlog(n) => nlog(n)

## Key Take Aways:
## Learned Pointers (indexes), Standard Code Practices
## New Ruby Methods: Array.each_with_index, Array.sort!
## Building on fundamentals conditionals, comparison operators,  Loops (with indexes)
## Advanced Concepts: Guard Clauses


def longest_consecutive_sequence(nums)
  return 0 if nums.empty?

  num_set = nums.to_set # O(n) time complexity can also be a hash
  
  max_length = 0 

  num_set.each do |num| # O(n) time complexity
    if !num_set.include?(num - 1) # O(1) time complexity
      current_num = num
      current_length = 1

      while num_set.include?(current_num + 1) # O(1) time complexity can you explain why this loop is tecnically O(1)? Think of why pushing to a array is O(1) space
        current_num += 1
        current_length += 1
      end

      max_length = [max_length, current_length].max
    end
  end

  max_length
end