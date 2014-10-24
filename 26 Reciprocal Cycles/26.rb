def repeating_cycle_length(num)
  count = 0
  denominator = 1
  res = 0.1
  remainders = []

  loop do
    denominator = res * 10
    res = denominator % num
    return count - remainders.index(res) if remainders.include?(res)
    remainders << res
    count += 1
    return 0 if count == num || res == 0
  end

  count - remainders.index(res)
end

biggest = 0

(1...999).each do |num|
  result = repeating_cycle_length(num)
  biggest = num if result > biggest
end

p biggest