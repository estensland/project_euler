# TOO SLOW

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

  divisors.uniq.inject(:+)
end

def is_abundant?(num)
  num < sum_of_divisors(num)
end

abundants =[]

(12..28123).each do |num|
  abundants << num if is_abundant?(num)

end

paired_sums = abundants.repeated_combination(2).map{|a| a.reduce(:+)}

p paired_sums

