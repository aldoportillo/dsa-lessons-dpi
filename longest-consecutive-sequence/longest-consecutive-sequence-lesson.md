# Lesson: Longest Consecutive Sequence – Brute Force vs. Optimized

## Objective

In this lesson, we will explore two approaches to solving the Longest Consecutive Sequence problem: a brute force approach and an optimized approach. This will help us understand the trade-offs in time complexity and why we prefer the optimized approach.

## Problem Recap

Given an unsorted array of integers, find the length of the longest consecutive elements sequence.

### Example

```plaintext
Input: [100, 4, 200, 1, 3, 2]
Output: 4
Explanation: The longest consecutive sequence is [1, 2, 3, 4], so the length is 4.
Approach 1: Brute Force
```

## Approaches

### Brute Force Approach

The brute force approach tries to find every possible consecutive sequence and tracks the maximum length. We can break this down into the following steps:

#### Steps

1. Sort the Array: Sorting the array will allow us to look for consecutive numbers more easily. However, sorting the array takes O(n log n) time.

2. Track the Length of Consecutive Sequences: After sorting, iterate through the sorted array and count the length of consecutive sequences by checking if the current element is exactly 1 more than the previous element.
Update the Maximum Sequence Length: For every sequence, update the maximum length if the current sequence is longer than the previously tracked maximum.
3. Continue the current sequence: If the current element is part of the current sequence, continue counting the length.
4. Continue the current sequence
5. Reset for a new sequence
6. Ensure the maximum sequence length is updated

#### Code Implementation

```ruby
def longest_consecutive_brute_force(nums)
  return 0 if nums.empty?
  nums.sort!

  max_length = 1
  current_length = 1

  (1...nums.length).each do |i|
    if nums[i] == nums[i - 1] + 1
      current_length += 1
    elsif nums[i] != nums[i - 1]
      max_length = [max_length, current_length].max
      current_length = 1
    end
  end
  [max_length, current_length].max
end
```

#### Complexity Analysis

- Sorting takes O(n log n) time.
- Iterating through the sorted array takes O(n) time.
- Total time complexity is O(n log n).

### Optimized Approach

The optimized approach eliminates the need for sorting by using a set to efficiently track consecutive elements in O(1) time.

#### Key Idea

By using a set, we can determine the start of a consecutive sequence by checking if a number x has a predecessor x-1.
If x-1 is not present in the set, then x is the start of a new sequence.
We then count how long the sequence lasts by checking for x+1, x+2, ... in the set.
Steps:
Convert the Array to a Set: This allows O(1) lookups for consecutive numbers.

Check for the Start of Sequences: For each number in the set, if it does not have a predecessor (i.e., x-1 is not in the set), then it is the start of a new sequence.

Count the Sequence: For each starting point, count how many consecutive numbers follow.

Track the Longest Sequence: Update the maximum sequence length as we count consecutive elements.

#### Steps 

1. Convert the array into a set for O(1) lookups
2. Iterate through each number
3. Check if it's the start of a sequence
4. Count the consecutive sequence
5. Update the longest sequence

Code Implementation

#### Code Implementation

```ruby

def longest_consecutive(nums)
  return 0 if nums.empty?

  num_set = nums.to_set
  max_length = 0

  num_set.each do |num|
    if !num_set.include?(num - 1)
      current_num = num
      current_length = 1

      while num_set.include?(current_num + 1)
        current_num += 1
        current_length += 1
      end

      max_length = [max_length, current_length].max
    end
  end

  max_length
end


```

#### Complexity Analysis

Inserting elements into a set takes O(n).
Iterating over the set and counting sequences takes O(n).
Total time complexity is O(n), which is optimal for large datasets.
