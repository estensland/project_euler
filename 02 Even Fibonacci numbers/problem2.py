current = 2
prev = 1
sum = 2

while (current < 4000000):
  next = current + prev
  prev = current
  current = next

  if ((current % 2) == 0):
    sum += current

print(sum)
