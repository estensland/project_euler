# 43 44 45 46 47 48 49
# 42 21 22 23 24 25 26
# 41 20  7  8  9 10 27 
# 40 19  6  1  2 11 28
# 39 18  5  4  3 12 29
# 38 17 16 15 14 13 30
# 37 36 35 34 33 32 31 

odds = (1..1001).select(&:odd?)
count = odds.count
top_right = odds.map{|n| n ** 2}.inject(:+)

bottom_left = 0

(count - 1).times do |i| 
  bottom_left += 1 + (i**2 * 4)
end

bottom_left