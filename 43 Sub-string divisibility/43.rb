original = ['1','2','3','4','5','6','7','8','9','0']

nums = []

original.permutation.each do |pandigital|
  d = pandigital
  next unless ((d[7] + d[8] + d[9]).to_i % 17) == 0
  next unless ((d[6] + d[7] + d[8]).to_i % 13) == 0
  next unless ((d[5] + d[6] + d[7]).to_i % 11) == 0
  next unless ((d[4] + d[5] + d[6]).to_i % 7) == 0
  next unless ((d[3] + d[4] + d[5]).to_i % 5) == 0
  next unless ((d[2] + d[3] + d[4]).to_i % 3) == 0
  next unless ((d[1] + d[2] + d[3]).to_i % 2) == 0
  nums << d.join('')
end

p nums.map(&:to_i).inject(:+)
