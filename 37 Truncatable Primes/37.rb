def prime?(num)
  return false if num == 1
  2.upto(num ** 0.5) do |i|
    return false if num % i == 0
  end
  true
end

def number_split(num)
  num.to_s.split(//).map(&:to_i)
end

def prime_to_left?(num)
  digits = number_split(num)

  (digits.length - 1).times do
    digits.shift

    return false unless prime?(digits.join('').to_i)
  end
  true
end

def prime_to_right?(num)
  digits = number_split(num)

  (digits.length - 1).times do
    digits.pop

    return false unless prime?(digits.join('').to_i)
  end
  true
end

res = []

(10..800000).to_a.each do |i|
  res << i if prime?(i) && prime_to_right?(i) && prime_to_left?(i)
end

p res.inject(:+)
