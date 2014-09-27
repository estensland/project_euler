def collatz_sequence(num)
  sequence = [num]
  until num == 1
    if num.even?
      num = num/2
    else
      num = (3 * num) + 1
    end
    sequence << num
  end
  sequence
end

start = 999_999
longest = 0
current = start
while start > 500_000
  start -= 2
  result = collatz_sequence(start).length
  if result > longest
    longest = result
    current = start
  end
end

p current