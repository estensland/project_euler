def squared_sum_difference(limit)
  regular_sum = 0
  squared_sum = 0

  1.upto(limit).to_a.each do |i|
    regular_sum += i 
    squared_sum += i**2
  end
  regular_sum ** 2 - squared_sum
end

p squared_sum_difference(100)
