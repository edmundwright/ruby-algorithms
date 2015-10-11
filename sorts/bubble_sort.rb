def bubble_sort(arr)
  swap_occurred = true

  while swap_occurred
    swap_occurred = false

    (1...arr.length).each do |i|
      if arr[i - 1] > arr[i]
        swap_occurred = true
        arr[i], arr[i - 1] = arr[i - 1], arr[i]
      end
    end
  end

  arr
end
