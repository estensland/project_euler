def collatz_sequence(num)
  sequence = [num]
  until num == 1 || sequence.length > 20
    num = num/2 if num.even?
    num = (3 * num) - 1 if num.odd?
    sequence << num
  end
  sequence
end

p collatz_sequence(5)