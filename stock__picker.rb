# credit to Ace Cassidy for their solution to this problem.  I was unable to figure this out for myself, but worked through Ace's solution to figure out what my issues were regarding double looping through the array.

def stock_picker(prices)
 
profit = 0
ind1 = 0 
ind2 = 0
lowP = 0
hiP = 0

# create a double loop through the array using a 'while' nested in another 'while'
# second loop subtracts each subsequent number in array from current element of first loop

# start first loop, you could also use an iterator to do this (ie - .each)
while ind1 < prices.length do
  ind2 = ind1 + 1
  # start second loop
  while ind2 < prices.length do
    # iterate through all possible profits until the maximum is found
    if (prices[ind2] - prices[ind1]) > profit
      profit = prices[ind2] - prices[ind1]
      buy = ind1
      sell = ind2
    end
    # advance to next element in second loop
    ind2 += 1
  end
  # advance to next element in first loop
  ind1 += 1
end
return [buy, sell]

end

puts(stock_picker([5, 3, 5, 7, 4, 3, 2, 9, 10, 100]))
