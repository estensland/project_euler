original = [1,2,3,4,5,6,7,8,9,0]

nums = []

original.permutation.each do |pandigital|
  d = pandigital
  return unless ((d[7] * d[8] * d[9]) % 17) == 0
  return unless ((d[6] * d[7] * d[8]) % 13) == 0
  return unless ((d[5] * d[6] * d[7]) % 11) == 0
  return unless ((d[4] * d[5] * d[6]) % 7) == 0
  return unless ((d[3] * d[4] * d[5]) % 5) == 0
  return unless ((d[2] * d[3] * d[4]) % 3) == 0
  return unless ((d[1] * d[2] * d[3]) % 2) == 0
  nums << d.inject(:+)
end

nums << d.inject(:+)

p nums
