import math

def squared_sum_to(number):
  regular_sum = 0
  squared_sum = 0

  for x in range (1, number + 1):
    regular_sum = regular_sum + x
    squared_sum = squared_sum + math.pow(x,2)

  return math.pow(regular_sum,2) - squared_sum
  
print squared_sum_to(100) 