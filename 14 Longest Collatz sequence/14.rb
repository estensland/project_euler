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

start = 1_000_000
longest = [0]
current = start
while start > 700_000
  start -= 1
  result = collatz_sequence(start)
  if result.length > longest.length
    longest = result
    current = start
  end
end

p current
p longest