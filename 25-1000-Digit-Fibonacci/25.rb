prev = 0
fib = 1
nth_term = 1

until fib.to_s.length >= 1_000
  store = fib
  fib += prev
  prev = store
  nth_term +=1
end

p nth_term