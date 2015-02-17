largest = 0

for x in range(100, 999):
  print x
  for y in range(x, 999):
    product = x * y
    if str(product) == str(product)[::-1]:
      if product > largest:
        largest = product
print largest
