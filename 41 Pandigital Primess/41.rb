def prime?(number)
  return false if number == 1
  2.upto(number**0.5) do |i|
    return false if number%i == 0
  end
  true
end

largest = 0

8.times do |i|
  (1..i + 2).to_a.permutation.each do |num|
    num = num.join.to_i
    if largest < num && prime?(num)
      largest = num
    end
  end
end

p largest