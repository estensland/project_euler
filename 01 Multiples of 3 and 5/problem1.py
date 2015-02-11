store = []
count = 0

while (count < 1000):
  if ((count % 3) == 0) or ((count % 5) == 0):
    store.append(count)
  count = count + 1

print sum(store)