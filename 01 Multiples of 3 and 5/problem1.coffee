store = []
i = 1

while(i < 1000)
  if ((i % 3 == 0) || (i % 5 == 0))
    store.push(i)
  i++

sum = store.reduce((a, b) ->
  a + b
)

console.log(sum)