#  73 74 75 76 77 78 79 80 81
#  72 43 44 45 46 47 48 49 50
#  71 42 21 22 23 24 25 26 51
#  70 41 20  7  8  9 10 27 52
#  69 40 19  6  1  2 11 28 53
#  68 39 18  5  4  3 12 29 54
#  67 38 17 16 15 14 13 30 55
#  66 37 36 35 34 33 32 31 56
#  65 64 63 62 61 60 59 58 57

odds = (1..1001).select(&:odd?)
count = odds.count
top_right = odds.map{|n| n ** 2}.inject(:+)


bottom_right_store = 0

bottom_right_store = odds.map.with_index{|n, index| (n * (index + 1)) * 2 + 1}

bottom_right_store.pop

bottom_right = bottom_right_store.inject(:+)



bottom_left = 0
# Also 2**2 + 1, 4**2 + 1, 6**2 +1
(count).times do |i| 
  bottom_left += 1 + (i**2 * 4)
end

evens = (1..1002).select(&:even?)
top_left = bottom_right_store.map.with_index{|n, index| n + evens[index]}.inject(:+)

p bottom_left + top_left + top_right + bottom_right

# 667 920 501
# 669 171 001