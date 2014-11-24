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

def all_permutations_prime?(num)
  digits = number_split(num)

  digits.length.times do
    digits.unshift(digits.pop)

    permutation = digits.inject{|sum, i| sum * 10 + i}
    return false unless prime?(permutation)
  end
  true
end

res = []

(2..1000000).to_a.each do |i|
  res << i if all_permutations_prime?(i)
end

p res.length