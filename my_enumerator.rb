def my_each(arr)
  
  for i in arr
    yield(i)
  end
  
end

my_each([0, 1, 2, 7, 6, "dog"]){|i| puts i}
# example block to pass to my_each ^^^^^