def triangle_num?(num)
  res = (num * 8 + 1) ** 0.5
  res % 1 ==0 && res % 2 != 0
end

def is_pentagon_number?(num)
  top = 24 * num + 1
  top = Math.sqrt(top) + 1
  (top / 6) % 1 == 0
end

def nth_hexagonal_number(num)
  num * ((2 * num) -1)
end

i = 144

until i > 100000
  num = nth_hexagonal_number(i)
  if triangle_num?(num) && is_pentagon_number?(num)
      puts [num, i]
  end
  i += 1
end
