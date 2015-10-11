# Sorts

|                               | Time best case | Time worst case | Time average case | Memory | Stable? | In place? |
|-------------------------------|----------------|-----------------|-------------------|--------|---------|-----------|
|[Merge sort](./merge_sort.rb)  | `O(nlog(n))`   | `O(nlog(n))`    | `O(nlog(n))`      | `O(n)` | Yes     | No        |
|[Bubble sort](./bubble_sort.rb)| `O(n)`         | `O(n^2)`        | `O(n^2)`          | `O(1)` | Yes     | Yes       |
|[Quicksort](./quicksort.rb)    | `O(nlog(n))`   | `O(n^2)`        | `O(nlog(n))`      | `O(n)` | No      | Yes       |

### Notes
- *Stable* means that ordering of equal elements is always preserved. Not relevant when elements are just numbers.
- Quicksort can use only `O(log(n))` memory if tail call optimization is enabled.
