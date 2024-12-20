require 'benchmark'
require_relative '../main.rb'  

small_array = [100, 4, 200, 1, 3, 2]
large_array = (1..1_000_000).to_a.shuffle
larger_array = (1..50_000_000).to_a.shuffle

Benchmark.bm(15) do |x|
  x.report("| Brute Force (small) |") { longest_consecutive_sequence_brute_force(small_array) }
  x.report("| Optimized (small) |")   { longest_consecutive_sequence(small_array) }

  x.report("| Brute Force (large) |") { longest_consecutive_sequence_brute_force(large_array) }
  x.report("| Optimized (large) | ")   { longest_consecutive_sequence(large_array) }

  x.report("| Brute Force (larger) |") { longest_consecutive_sequence_brute_force(larger_array) }
  x.report("| Optimized (larger) | ")   { longest_consecutive_sequence(larger_array) }
end
