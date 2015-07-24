


def triangle_num?(num)
    res = (num * 8 + 1) ** 0.5
    res % 1 ==0 && res % 2 != 0
end

def is_pentagon_number?(num)
  top = 24 * num + 1
  top = Math.sqrt(top) + 1
  (top / 6) % 1 == 0
end

def is_hexagontal_number?(num)
  top = 8 * num + 1
  top = Math.sqrt(top) + 1
  (top / 4) % 1 == 0
end
