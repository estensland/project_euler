evenFibsBelow = (max) ->
  current = 2
  previous = 1
  store = [current]

  while(current < max)
    next = current + previous;

    if (next % 2) == 0
      store.push(next)
    previous = current
    current = next
  store

result = evenFibsBelow(4000000)

sum = result.reduce((a, b) ->
  a + b
)


console.log(sum)