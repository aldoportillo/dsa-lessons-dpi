# Reverse Linked List in Ruby

## Introduction

This repo implements a solution to the classic computer science problem of reversing a singly linked list using Ruby. The solution includes an iterative method to reverse the list, and the project is set up with RSpec tests to ensure correctness.

## The Problem

### Task

Given the head of a singly linked list, reverse the list, and return the new head.

### Example

Consider a linked list `1 -> 2 -> 3 -> nil`. After reversing, it should become `3 -> 2 -> 1 -> nil`.

### Input

- The input is the head node of a singly linked list.

### Output

- The output is the new head node of the reversed singly linked list.

### Edge Cases

- Empty list (`nil`): The result should also be `nil`.
- Single-element list: The list remains the same after reversal.

## Understanding the Problem

A singly linked list is a data structure where each element (node) contains a value and a pointer to the next node in the sequence. The last node points to `nil`, indicating the end of the list.

### Example to Visualize

For a list `1 -> 2 -> 3 -> nil`:

- Reversing the list involves changing the pointers of each node so that the list becomes `3 -> 2 -> 1 -> nil`.

## Solution Approaches

### Iterative Approach

The iterative solution uses three pointers: `prev`, `current`, and `next_node` to reverse the pointers of the linked list in-place.

### Recursive Approach

The recursive solution reverses the linked list by recursively calling the function with the next node as the new head and the current node as the previous node.

## Running Tests

The project uses RSpec for testing.

### Steps to Run Tests

1. Ensure you have RSpec installed. If not, run:

   ```sh

   bundle install

   ```

2. Run the tests using the following command:

   ```sh

   rspec

   ```

3. RSpec will run all the test cases defined in `spec/linked_list_spec.rb` and report the results.

### Example Test Results

```less

Finished in 0.0023 seconds (files took 0.0803 seconds to load)
5 examples, 0 failures

```
