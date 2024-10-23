require 'debug'
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
  # Sort array
  nums.sort! # O(nlogn) time complexity

  # Initialize max_length and current_length (incrementors)
  max_length = 1
  current_length = 1

  # Iterate through the array O(n) time complexity
  nums.each_with_index do |number, i| # Question: on the first iteration what is i? Answer: 0 so what is nums[i - 1]? Answer: nil so we need to handle this case in the loop below 
    # set previous number
    next if i == 0;
    # debugger
    previous_number = nums[i - 1] #fun activiy here. What is the value of nums[i-1] well if i is 0 then nums[-1] is the last element in the array we can handle this casse above but we don't need to


    # Check if number is consecutive
    if number == previous_number + 1
      current_length += 1
    elsif number != previous_number
      max_length = [max_length, current_length].max
      current_length = 1
    end
  end
  [max_length, current_length].max
end

# Complexity Analysis for brute force solution

# loop through the array O(n)
# sort the array O(nlogn)
# Total time complexity O(nlogn) + O(n) = O(nlogn) because O(nlogn) is the dominant term

pp longest_consecutive_brute_force([100, 4, 200, 1, 3, 2]) # 4
pp longest_consecutive_brute_force([100, 4, 200, 1, 3, 2, 5, 6, 7, 8, 9, 10]) 
pp longest_consecutive_brute_force([100, 4, 200, 1, 3, 2, 5, 6, 7, 8, 9, 10, 11, 11, 13])
pp longest_consecutive_brute_force([1]) 


def longest_consecutive(nums)
  return 0 if nums.empty?

  num_set = nums.to_set # O(n) time complexity can also be a hash
  
  max_length = 0 

  num_set.each do |num| # O(n) time complexity
    pp "iteration #{num}" 
    debugger
    if !num_set.include?(num - 1) # O(1) time complexity
      pp "iteration #{num}" 
      current_num = num
      current_length = 1

      while num_set.include?(current_num + 1) # O(1) time complexity
        current_num += 1
        current_length += 1
      end

      max_length = [max_length, current_length].max
    end
  end

  max_length
end

# Complexity Analysis for optimal solution O(n) time complexity

# loop through the array O(n)
# loop through the set O(1)
# Total time complexity O(n) + O(1) = O(n) because O(n) is the dominant term



pp longest_consecutive([100, 4, 200, 1, 3, 2]) # 4
pp longest_consecutive([100, 4, 200, 1, 3, 2, 5, 6, 7, 8, 9, 10]) 
pp longest_consecutive([100, 4, 200, 1, 3, 2, 5, 6, 7, 8, 9, 10, 11, 11, 13])
pp longest_consecutive([1]) 