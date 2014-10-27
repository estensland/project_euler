def sum_of_divisors(num)
  return 0 if num == 1

  divisors = [1]
  square_root = Math.sqrt(num)

  (2..(square_root)).each do |divisor|
    if num % divisor == 0
      divisors << num / divisor
      divisors << divisor
    end
  end

  p divisors
  divisors.uniq.inject(:+)
end

def is_abundant?(num, divisors_sum)
  num < divisors_sum
end