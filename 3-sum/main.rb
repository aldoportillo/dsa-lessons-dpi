require 'debug'

# 3 Sum
# Given an array nums of n integers, are there elements a, b, c in nums such that a + b + c = 0?
# Find all unique triplets in the array which gives the sum of zero.
# Notice that the solution set must not contain duplicate triplets.

# Input: type Array - sequence of integers
# Output: type Array - sequence of integers

# Example
# Input: [-1, 0, 1, 2, -1, -4]
# Output: [[-1, 0, 1], [-1, -1, 2]]

def brute_force_three_sum(nums)
    results = []
    n = nums.length
  
    (0...n).each do |i|
      (i + 1...n).each do |j|
        (j + 1...n).each do |k|
          if nums[i] + nums[j] + nums[k] == 0
            triplet = [nums[i], nums[j], nums[k]].sort
            results << triplet unless results.include?(triplet)
          end
        end
      end
    end
  
    results
  end
  
  def hash_table_three_sum(nums)
        nums.sort!
        results = []
      
        nums.each_with_index do |num, i|
          next if i > 0 && nums[i] == nums[i - 1] # Skip duplicates for `a`
      
          target = -num
          seen = {}
      
          (i + 1...nums.length).each do |j|
            complement = target - nums[j]
            if seen[complement]
              results << [num, nums[j], complement].sort
              seen.delete(complement) # Prevent duplicates
            else
              seen[nums[j]] = true
            end
          end
        end
      
        results.uniq
      
  end


  def three_sum(nums)
    nums.sort!
    results = []
  
    nums.each_with_index do |num, i|
      next if i > 0 && nums[i] == nums[i - 1] 
  
      left, right = i + 1, nums.length - 1
  
      while left < right
        sum = num + nums[left] + nums[right]
  
        if sum == 0
          results << [num, nums[left], nums[right]]
          left += 1
          right -= 1
  
          left += 1 while left < right && nums[left] == nums[left - 1]
          right -= 1 while left < right && nums[right] == nums[right + 1]
        elsif sum < 0
          left += 1
        else
          right -= 1
        end
      end
    end
  
    results
  end
  