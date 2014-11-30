def right_get_c(a,b)
  (a**2 + b**2) ** 0.5
end

biggest = []
big_num =0

1.upto(1000).each do |i|
  sq_root = (i ** 0.5)
  nums = []
  2.upto(sq_root) do |n|
    if i % n == 0
      x = i / n
      nums << [x, n, right_get_c(x, n)]
    end
  end

  if nums.length > biggest.length
    big_num = i
    biggest = nums
  end
end

p big_num