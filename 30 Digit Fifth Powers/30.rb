def digit_powers?(number, power)
  return false if number == 1 || number == 0
  array = number.to_s.split(//).map(&:to_i)

  digit_sum = array.inject(0){|sum, i| sum += i ** power}
  number == digit_sum
end


def digit_fith_powers?(number)
  digit_powers?(number, 5 )
end


res = []

(2..1000000).to_a.each do |n|
  res << n if digit_fith_powers?(n)
end

p res.inject(:+)