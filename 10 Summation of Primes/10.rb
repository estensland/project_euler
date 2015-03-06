def prime?(num)
  return false if num == 1
  2.upto(num ** 0.5) do |i|
    return false if num % i == 0
  end
  true
end

count = 3;
sum = 2;
while count < 2_000_000
  if (prime?(count))
    sum = sum + count;
  end
  count += 2;
end

p sum
