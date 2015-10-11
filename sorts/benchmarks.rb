require 'benchmark'

require_relative 'merge_sort'
require_relative 'bubble_sort'

Benchmark.bm do |x|
  [10, 100, 1000, 10000].each do |n|
    test_array = (0...n).to_a.shuffle
    x.report("n = #{n}  (merge)".rjust(18)) { merge_sort(test_array) }
    x.report("n = #{n} (bubble)".rjust(18)) { bubble_sort(test_array) }
  end
end
