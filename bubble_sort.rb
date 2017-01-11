def bubble_sort(arr)
  
  arr.each do |i|
  
    arr.each_with_index do |i, idx|
      if arr[idx+1] != nil && arr[idx] > arr[idx + 1] 
        arr[idx], arr[idx+1] = arr[idx+1], arr[idx]
      end
    end
    
  end
  
end

bubble_sort([1, 11, 34, 2, -3, 58, 2, 7, 3])