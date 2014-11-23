@factorial_cache = {}

def factorial(num)
  return 1 if num.zero?
  if @factorial_cache[num].nil?
    res = (1..num).to_a.inject(&:*)
    @factorial_cache[num] = res
    return res
  else
    return @factorial_cache[num]
  end
end

def digit_factorial?(number)
  return false if number == 1 || number == 0
  array = number.to_s.split(//).map(&:to_i)
  digit_sum = array.inject(0){|sum, i| sum += factorial(i)}
  number == digit_sum
end

res = []

(3..2540161).to_a.each do |n|
  res << n if digit_factorial?(n)
end

p res
p res.inject(:+)