# Longest Consecutive Sequence

# Given an unsorted array of integers, find the length of the longest consecutive elements sequence.

# Your algorithm should run in O(n) complexity.

# Example:

# Input: [100, 4, 200, 1, 3, 2]
# Output: 4
# Explanation: The longest consecutive elements sequence is [1, 2, 3, 4]. Therefore its length is 4.

# Brute force solution

def longest_consecutive_brute_force(nums)
  return 0 if nums.empty?
  nums.sort!

  max_length = 1
  current_length = 1

  nums.each_with_index do |number, i|
    previous_number = nums[i - 1]

    if number == previous_number + 1
      current_length += 1
    elsif number != previous_number
      max_length = [max_length, current_length].max
      current_length = 1
    end
  end
  [max_length, current_length].max
end

def longest_consecutive(nums)
  return 0 if nums.empty?

  num_hash = {}
  nums.each { |num| num_hash[num] = true }
  
  max_length = 0

  num_hash.each_key do |num|
    if !num_hash[num - 1]
      current_num = num
      current_length = 1

      while num_hash[current_num + 1]
        current_num += 1
        current_length += 1
      end

      max_length = [max_length, current_length].max
    end
  end

  max_length
end



