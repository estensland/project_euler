def fibonacci_below(number)
  prev = 0
  fib = 1
  nums = []

 until fib >= number
  store = fib
  fib += prev
  prev = store
  nums << fib
 end

 nums
end

p fibonacci_below(4_000_000).select(&:even?).reduce(:+)
