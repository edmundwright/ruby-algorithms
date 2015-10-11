def merge_sort(arr)
  return arr if arr.length < 2

  middle_index = arr.length / 2

  sorted_left = merge_sort(arr.take(middle_index))
  sorted_right = merge_sort(arr.drop(middle_index))

  merge(sorted_left, sorted_right)
end

def merge(arr1, arr2)
  merged = []

  until arr1.empty? || arr2.empty?
    merged << (arr1.first <= arr2.first ? arr1.shift : arr2.shift)
  end

  merged + arr1 + arr2
end
