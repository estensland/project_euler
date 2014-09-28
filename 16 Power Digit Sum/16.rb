arr = (2**1000).to_s.split('').map(&:to_i)

p arr.reduce(:+)