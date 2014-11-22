def digit_fith_powers?(number)
  return false if number == 1 || number == 0
  array = number.to_s.split(//).map(&:to_i)

  digit_sum = array.inject(0){|sum, i| sum += i ** 4}
  number == digit_sum
end


res = []

(1000..10000000).to_a.each do |n|
  next if n.odd?
  res << n if digit_fith_powers?(n)
end

p res