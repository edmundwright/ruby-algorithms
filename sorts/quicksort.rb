def quicksort(arr)
  quicksort_helper(arr, 0, arr.length)

  arr
end

def quicksort_helper(arr, start_index, n)
  return if n < 2

  pivot_index = start_index + (n / 2)
  pivot = arr[pivot_index]

  arr[start_index], arr[pivot_index] = arr[pivot_index], arr[start_index]

  i = start_index + 1
  (start_index + 1...start_index + n).each do |j|
    current_el = arr[j]
    if current_el < pivot
      arr[i], arr[j] = current_el, arr[i]
      i += 1
    end
  end

  arr[start_index], arr[i - 1] = arr[i - 1], pivot

  quicksort_helper(arr, start_index, i - 1 - start_index)
  quicksort_helper(arr, i, start_index + n - i)
end
