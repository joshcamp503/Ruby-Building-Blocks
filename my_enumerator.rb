def my_each(arr)
  
  for i in arr
    yield(i)
  end
  
end

my_each([0, 1, 2, 7, 6, "dog"]){|i| puts i}
# example block to pass to my_each ^^^^^

def my_each_with_index(arr)
  

  for element in arr
    index = arr.index(element)
    yield(element, index)
  end
  
  
end

my_each_with_index([0, 1, 2, 7, 6, "dog"]){|i, idx| puts i if idx % 2 === 0}

def my_select(arr)
  
  new_arr = []
  for i in arr
    if yield(i)
      new_arr.push(i)
    end
  end
  return new_arr
    
end

list =  [1,'a', 2, 'dog', 'cat', 5, 6]
my_select(list){ |x| x.class==String}.join(", ")

def my_all?(arr)

true_count = 0
array_length = arr.length

for i in arr  
  if yield(i)
    true_count += 1
  end
end
if true_count === array_length
  return arr
else
  return false 
end

end 

list = ["a", 1, "c"]
my_all?(list){|x| x.class==String }.join(" ")

def my_any?(arr)

true_count = 0
array_length = arr.length

for i in arr  
  if yield(i)
    true_count += 1
  end
end
if true_count > 0
  return arr
else
  return false 
end

end 

list = ["a", "b", "c"]
my_any?(list){|x| x.class==String }.join(" ")

def my_none?(arr)

true_count = 0
array_length = arr.length

for i in arr  
  if yield(i)
    true_count += 1
  end
end
if true_count == 0
  return arr
else
  return false 
end

end 

list = [1, 2, 3]
my_none?(list){|x| x.class==String }.join(" ")

def my_count?(arr)

true_count = 0

for i in arr  
  if yield(i)
    true_count += 1
  end
end
return true_count

end 

list = [1, 2, 3]
my_count?(list){|x| x>1 }

def my_map(arr)

new_arr = []

for i in arr  
  new_arr.push(yield(i))
end
return new_arr

end 

list = [1, 2, 3]
my_map(list){|x| x + 1 }

module Enumerable
  
  def my_each
    for i in 0..self.length-1 do
      yield self.to_a[i]
    end
    return self
  end
  
  def my_inject(initial = 0, sym = nil)
    unless sym
      self.my_each {|e| initial = yield(initial, e)}
    else
      self.my_each {|e| initial = initial.method(sym).call(e)}
    end
    return initial
  end

end

list = [1, 2, 3]
list.my_inject{|memo, element| memo += element}